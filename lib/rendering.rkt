#lang at-exp racket

(provide 
  sequence->html
  classmaps->html
  classmap->html
  mode->html
  mode->content-card
  tag->html
  (all-from-out "./icons.rkt"))

(require website-js 
         website-js/components/form-row
         website-js/components/time-select
         (only-in website data-toggle:)
         (only-in website/bootstrap responsive-row)
         "./base.rkt"
         "./icons.rkt"
         "./tags/main.rkt")

(define (mode-icon x)
  (if (story-mode? x)
    (story-icon)
    (game-icon)))

(define (sequence->html s)
  (card
    (card-body 
      (card-title (sequence-name s))
      (card-subtitle (sequence-summary s))
      (apply (curry responsive-row #:columns 4 #:padding 0)
                    (map classmap->summary-html
                         (sequence-classmaps s))))))

;TODO: Make this link show a larger version of the classmap
;  1) Modal?
;      * Kind of works, but needs to be wider.

;  2) Link to page?
;  3) Accordion?

(define (show-classmap cm)
  (enclose
    (div
      (a data-toggle: "modal" 
         data-target: (ns# "classmap") 
         style: (properties cursor: "pointer")
         href: "#"
         (classmap-name cm))

      ;TODO: I wanted to use .modal-xl, but it would appear our bootstrap css doesn't have a class for that.  Check the versions?  For now, I'll just hardcode the width. 
      
      (modal id: (ns "classmap")
             (modal-dialog class: "modal-lg" style: (properties min-width: "90%") 
               (modal-content
                 (modal-body
                   (classmap->html cm))))))

    (script ()
        ;TODO: Add scripts here if necessary
            )))

(define (classmap->summary-html cm)
  (card class: "h-100"
    (card-header 
      (show-classmap cm))
    (card-body 
      (badge-pill-info "~" (total-minutes cm)  " minutes")
      (badge-pill-info (length (classmap-modes cm)) " modes") 
      (hr)
      (classmap-summary cm)) 
    (card-footer 
      (classmap->modes-summary-html cm))))

(define (classmap->modes-summary-html cm)
  (span (map mode->summary-html (classmap-modes cm))))

(define (mode->summary-html m)
  (define pill
    (if (story-mode? m)
      badge-pill-light
      badge-pill-dark))

  (pill style: (properties border: "1px solid black" width: 30)
   ;TODO: Cards inside a card footer are a bit weird.
   ;  Try badge pills?
   ;card
    'title: (mode-name m)
    'data-toggle: "tooltip"
    'data-placement: "top"
    (mode-icon m)))

(define (classmaps->html . cms)
  (row
    (map (compose col classmap->html) 
         (flatten cms))))

(define (total-minutes cm)
  (apply + (map mode-minutes (classmap-modes cm))))

(define (classmap->html 
           cm)
   (enclose
     (card
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
          (~a "~" (total-minutes cm) " minutes")))
      (card-body
       (h6 class: "card-title text-muted" (i (classmap-summary cm)))
       (row
        (col id: (ns 'modes)
         (map (curry mode->html 
                     #:content-id (id 'contentId)) 
          (classmap-modes cm)))

        (col id: (id 'contentId))))
      (if (classmap-credit cm)
          (card-footer "Classmap Created by: " (classmap-credit cm))
          #f))
     (script ()
       )))

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
           m)

  (define card-class
    (if (story-mode? m)
      "bg-light"
      "bg-dark text-white"))

  (define card-height
    (sub1 (* 10 
             (max (mode-minutes m) 5))))

  (enclose
    (card-group on-click: (call 'showMode)
                style: (properties cursor: "pointer")
                (card
                  class: card-class
                  (card-header 
                    style: (properties height: card-height)
                    class: "text-truncate"
                    'title: (mode-name m)
                    (mode-icon m)
                    " "
                    (mode-name m)))

                (card
                  class: card-class
                  (card-header 
                    style: (properties height: card-height)
                    (span class: "mode-minutes"
                          (i class: "fa fa-clock-o") " ~" (mode-minutes m) "min") ))

                (template id: (id 'localContentId)
                          (mode->content-card m)))

    (script ([localContentId (id 'localContentId)]
             [contentId content-id])
            (function (showMode)
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
  (define mode-credit (cond [(and (story-mode? s) (story-mode-credit s)) story-mode-credit]
                            [(and (game-mode? s) (game-mode-credit s)) game-mode-credit]
                            [else #f]))

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
   (mode-data s))
  (if mode-credit
      (card-footer "Created By: " (mode-credit s))
      #f)))


(define (tag->html t)
  (badge-pill-warning 
    style: (properties cursor: "pointer")
    'title: (tag-desc t)
    'data-toggle: "tooltip"
    'data-placement: "top"
    (tag-name t)))






