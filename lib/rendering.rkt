#lang at-exp racket

(provide classmaps->html
         classmap->html)

(require website-js 
         website-js/components/form-row
         website-js/components/time-select
         "./base.rkt")

(define (classmaps->html . cms)
  (card-group
    (map classmap->html (flatten cms))))

(define (classmap->html 
           cm)
 (define content-id (gensym 'content-id))
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
       (time-picker-widget #:on-change (callback 'timeChange))  
       (row
        (col id: (ns 'modes)
         (map (curry mode->html 
                     #:class-minutes (classmap-minutes cm)
                     #:content-id content-id) 
          (classmap-modes cm)))

        (col id: content-id))))
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

(define (mode->html #:content-id content-id 
                    #:class-minutes class-minutes
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
 (define id (gensym 'game-mode))
 (define local-content-id
   (~a id "-content"))

 (list
  (card-group
    'onClick: (display-content local-content-id content-id)
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
      (i class: "fas fa-chess-knight")
      " "
      (game-mode-name g)))
    (template id: (~a id "-content")
      (mode->content-card g)))
   
      ))

(define (story-mode->html content-id s)
 (define id (gensym 'story-mode))
 (define local-content-id
   (~a id "-content"))
 (list
  (card-group
    'onClick: (display-content local-content-id content-id)
   (card
    class: "bg-light"
    (card-header 
      class: "text-truncate h-100"
      'data-toggle: "tooltip"
      'data-placement: "left"
      'title: (story-mode-name s)
      (i class: "fas fa-book")
      " "
      (story-mode-name s)))

   (card
    (card-header 
     style: (properties height: 
                (sub1 (* 10 (story-mode-minutes s))))
     (span class: "mode-minutes"
        (story-mode-minutes s)) " minutes"))
   
   (template id: local-content-id 
     (mode->content-card s)))))

(define (display-content local-content-id content-id)
  @~a{
    document.getElementById("@content-id").innerHTML = document.getElementById("@local-content-id").innerHTML; 

    setTimeout(()=>{
      $(document.getElementById("@content-id").childNodes[0]).addClass("in");
    }, 100)
    })

(define (mode->content-card s)
 (define mode-data (if (story-mode? s)
                      story-mode-data
                      game-mode-data))
 (define mode-name (if (story-mode? s)
                      story-mode-name
                      game-mode-name))

 (define bg-color (if (story-mode? s)
                      ""
                      "bg-dark"))

 (define text-color (if (story-mode? s)
                      ""
                      "text-white"))

 (define icon (if (story-mode? s)
               (i class: "fas fa-book")
               (i class: "fas fa-chess-knight")))

 (card
  class: (~a "fade" " " bg-color " " text-color)
  (card-header icon " " (mode-name s))
  (card-body
   (mode-data s))))

