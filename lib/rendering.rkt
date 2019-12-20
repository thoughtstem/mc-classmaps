#lang at-exp racket

(provide classmaps->html
         classmap->html
         mode->html
         mode->content-card
         tag->html
         (all-from-out "./icons.rkt"))

(require website-js 
         website-js/components/form-row
         website-js/components/time-select
         "./base.rkt"
         "./icons.rkt"
         "./tags/main.rkt")

(define (classmaps->html . cms)
  (row
    (map (compose col classmap->html) 
         (flatten cms))))

(define (classmap->html 
           cm)
   (enclose
     (card
      (js-runtime) ;Misplaced. Move...
      @style/inline{
        .fade {
          opacity: 0;
          -webkit-transition: opacity 0.15s linear;
          -moz-transition: opacity 0.15s linear;
          -o-transition: opacity 0.15s linear;
          transition: opacity 0.15s linear;
        }
        .fade.in {
          opacity: 1;
        }
      }
      (card-header 
        class: "bg-info text-white"
        (classmap-name cm)
        " "
        (badge-pill-secondary 
          id: (ns 'minutes-display)
          "60 minutes"))
      (card-body
       (h6 class: "card-title text-muted" (i (classmap-summary cm)))
       (time-picker-widget #:on-change (callback 'timeChange))  
       (row
        (col id: (ns 'modes)
         (map (curry mode->html 
                     #:class-minutes (classmap-minutes cm)
                     #:content-id (id 'contentId)) 
          (classmap-modes cm)))

        (col id: (id 'contentId)))))
     (script ([minutesDisplay (ns 'minutes-display)])
       (function (timeChange s e)
         @js{var diff = moment.duration(@e .diff(@s)).asMinutes()}
         @js{@getEl[minutesDisplay].innerHTML = diff + " minutes"}

         @js{
            var children = $("@(id# 'modes) script")

            for(var c of children){
              @(-> 'c updateMinutes 'diff)
            }
          }
         ))))

(define (time-picker-widget #:on-change (on-change noop))
  (enclose
    (list
      (form-row "Start" (time-select #:start "08:00:00"
                                     #:inc 30
                                     #:steps 21
                                     #:selected "14:00:00"
                                     #:on-change (callback 'onStartChange)))

      (form-row "End" (time-select #:start "08:00:00"
                                   #:inc 30
                                   #:steps 21
                                   #:selected "15:00:00"
                                   #:on-change (callback 'onEndChange))))

    (script ([startTime @js{moment("2:00 PM", "h:mm a")}]
             [endTime @js{moment("3:00 PM", "h:mm a")}])

      (function (onStartChange t)
        (set-var startTime @js{moment(t, "h:mm a")})
        (on-change startTime endTime)) 

      (function (onEndChange t)
        (set-var endTime @js{moment(t, "h:mm a")})
        (on-change startTime endTime)))))

(define (mode->html #:content-id (content-id "")
                    #:class-minutes (class-minutes 60)
           m)
 (enclose
  (span id: (ns 'mode)
   (if (story-mode? m)
    (story-mode->html content-id m)
    (game-mode->html content-id m)))
  (script ([originalModeMinutes (mode-minutes m)]
           [originalClassMinutes class-minutes]
           [construct @js{setTimeout(()=>@(call 'updateMinutes 60),1)}] ;Two brittle things here: The timeout constructor trick and the hard-coded 60.  
           )
    (function (updateMinutes total)
      @js{var newScale = @total / @originalClassMinutes}
      @js{var newMinutes = Math.floor(@originalModeMinutes * newScale)}
      @js{$("@(id# 'mode) .mode-minutes").html(newMinutes)}    
      ))))

(define (game-mode->html content-id g)
 (enclose
  (card-group on-click: (call 'showGame) 
   (card class: "order-last order-sm-first"
    'data-toggle: "modal" 
    'data-target: (~a "#" id)
    (card-header 
      class: "bg-dark text-white minutes-display"
      style: (properties height: 
               (sub1 (* 10 (game-mode-minutes g))))
      (span class: "mode-minutes" (game-mode-minutes g)) " minutes"))
   (card
    class: "text-white bg-dark order-first order-sm-last"
    'data-toggle: "modal" 
    'data-target: (~a "#" id)
    (card-header 
      class: "text-truncate h-100"
      'data-toggle: "tooltip"
      'data-placement: "right"
      'title: (game-mode-name g)
      (game-icon)
      " "
      (game-mode-name g)))
    (template id: (id 'localContentId)
      (mode->content-card g)))
  
  (script ([localContentId (id 'localContentId)]
           [contentId content-id])
   (function (showGame)
    @js{
      $(@getEl{@contentId}).html("")
    }

    (inject-component 
     @localContentId
     @contentId)

    @js{
      $(document.getElementById(@contentId).childNodes[0]).addClass("in");
    })
     
     )))

(define (story-mode->html content-id s)
 (enclose
  (card-group on-click: (call 'showStory)
   (card
    class: "bg-light"
    (card-header 
      class: "text-truncate h-100"
      'data-toggle: "tooltip"
      'data-placement: "left"
      'title: (story-mode-name s)
      (story-icon) 
      " "
      (story-mode-name s)))

   (card
    (card-header 
     style: (properties height: 
                (sub1 (* 10 (story-mode-minutes s))))
     (span class: "mode-minutes"
        (story-mode-minutes s)) " minutes"))
   
   (template id: (id 'localContentId)
     (mode->content-card s)))

  (script ([localContentId (id 'localContentId)]
           [contentId content-id])
   (function (showStory)
    @js{
      $(@getEl{@contentId}).html("")
    }

    (inject-component 
     @localContentId
     @contentId)

    @js{
      $(document.getElementById(@contentId).childNodes[0]).addClass("in");
    })
     
     )))

(define (display-content local-content-id content-id)
  @~a{
    document.getElementById("@content-id").innerHTML = document.getElementById("@local-content-id").innerHTML; 

    setTimeout(()=>{
      $(document.getElementById("@content-id").childNodes[0]).addClass("in");
    }, 100)
    })

(define (mode->content-card s #:fade? (fade? #t))
  (define mode-data (if (story-mode? s)
                        story-mode-data
                        game-mode-data))
  (define mode-name (if (story-mode? s)
                        story-mode-name
                        game-mode-name))
  (define mode-summary (if (story-mode? s)
                           story-mode-summary
                           game-mode-summary))

 (define bg-color (if (story-mode? s)
                      ""
                      "bg-dark"))

 (define text-color (if (story-mode? s)
                      ""
                      "text-white"))

 (define icon (if (story-mode? s)
               story-icon
               game-icon))

 (card class: (~a (if fade? "fade" "") " " bg-color " " text-color)
  (card-header icon " " (mode-name s))
  (card-body
   (h6 class: "card-title text-muted" (i (mode-summary s)))
   (mode-data s))))


(define (tag->html t)
  (badge-pill-warning 
    style: (properties cursor: "pointer")
    'title: (tag-desc t)
    'data-toggle: "tooltip"
    'data-placement: "top"
    (tag-name t)))






