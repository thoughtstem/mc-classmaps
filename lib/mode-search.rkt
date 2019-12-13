#lang at-exp racket

(provide search)

(require website-js
         mc-classmaps/lib)

(define (search tags stories)
  (define (search-button t #:on-click (on-click (noop)))
    (enclose
      (badge-pill-success id: (id "main")
        on-click: (call 'clicked)
        style: (properties cursor: "pointer" 'user-select: "none")
        (tag-name t))
      (script ([selected 'true]
               [main (id "main")])
        (function (clicked)
          @js{@selected = !@selected}
          
          (call 'render)
          (on-click (tag-name t) @js{@selected}))

        (function (nextClass)
          @js{
            if(@selected)
              return "badge badge-pill badge-success"
            else
              return "badge badge-pill badge-danger"
          })
          
        (function (render)
          @js{@getEl{@main}.className = @nextClass()}
          ))))

  (enclose
    (div
      (div
        (label "Click to filter by tags:"))
      (map (curry search-button #:on-click (callback 'search))
           tags)
      (row 
         (map listing stories))) 

    (script ()
      (function (search t show)
        @js{
          if(show){
            $('.tag-' + t).fadeIn()
          }else{
            $('.tag-' + t).fadeOut()
          }
        }
        ))))

(define (mode-modal s)
  (modal id: (id "exampleModal")
    (modal-dialog
      (modal-content
        (modal-header 
          (h5 (mode-name s))
          (span 
            'data-dismiss: "modal"
            (i class: "fas fa-times")))
        (modal-body
          (map tag->html (mode-tags s))
          (hr)
          (mode-summary s)
          (hr)
          (mode-data s))))))


(define (listing s)
 (define (tag->class t) (~a "tag-" (tag-name t)))
 (enclose
  (col-2 class: (~a (string-join (map tag->class (mode-tags s)) " ") " pt-2" )
   (card 
    'data-toggle: "modal" 'data-target: (id# "exampleModal")
    class: (~a (if (story-mode? s) "bg-light" (~a "bg-dark text-white")) " h-100")
    (card-header 
     'title: (mode-name s)
     'data-toggle: "tooltip"
     'data-placement: "top"
     (if (story-mode? s) (story-icon) (game-icon))
     " "
     (mode-name s))
    (card-body 
      (map tag->html (mode-tags s))))
   (mode-modal s))
   
   (script ()
     )))

