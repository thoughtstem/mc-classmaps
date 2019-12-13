#lang at-exp racket

(provide story-mode-tab-pane
         story-mode-main-points)

(require website-js
         mc-classmaps/lib)

(define (story-mode-tab-pane)
 (tab-pane id: "story-modes" class: "p-3" 
  (include-js "https://d3js.org/d3.v5.min.js")

  @h3{@(story-icon) Story Modes}
  (card
    (card-text
      (card-body
        (story-mode-main-points))))
  @h3[class: "pt-3"]{The Story Mode database}
  (search)))

(define (search)
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
           (all-tags))
      (row ;card-group ;apply (curry responsive-row #:columns 6)
             (map story-listing 
               (all-stories)))) 

    (script ()
      (function (search t show)
        (log 't)
        (log 'show)

        @js{
          if(show){
            $('.tag-' + t).fadeIn()
          }else{
            $('.tag-' + t).fadeOut()
          }
        }
        ))))

(define (story-modal s)
  (modal id: (id "exampleModal")
    (modal-dialog
      (modal-content
        (modal-header 
          (h5 (story-mode-name s))
          (span 
            'data-dismiss: "modal"
            (i class: "fas fa-times")))
        (modal-body
          (map tag->html (story-mode-tags s))
          (hr)
          (story-mode-data s))))))


(define (story-listing s)
 (define (tag->class t) (~a "tag-" (tag-name t)))
 (enclose
  (col-2 class: (~a (string-join (map tag->class (story-mode-tags s)) " ") " pt-2" )
   (card 
    'data-toggle: "modal" 'data-target: (id# "exampleModal")
    class: "bg-light h-100"
    (card-header 
     'title: (story-mode-name s)
     'data-toggle: "tooltip"
     'data-placement: "top"
     (story-icon) 
     " "
     (story-mode-name s))
    (card-body 
      (map tag->html (story-mode-tags s))))
   (story-modal s))
   
   (script ()
     )))

(define (story-mode-main-points)
  @div{
    @p{Story Modes all have a few things in common.}
    @(hr)
    @row{
      @col-6{@b{Focal Points @badge-pill-warning{1}}}
      @col-6{All students share a common point of focus -- usually the coach, sometimes other students}}
    @(hr)
    @row{
       @col-6{@b{Energy Level @badge-pill-warning{Normal}}}
       @col-6{Students are engaged and interested -- but heartrates are low (compared to playing games).  It's the kind of energy you experence when you watch an interesting show on television, or read an interesting book.}}
    @(hr)
    @row{
      @col-6{@b{Comfort Zone @badge-pill-warning{Inside}}}
      @col-6{Students are inside their comfort zone and able to pick up new information because they are relaxed and, ideally, in a state of @(link-to "https://en.wikipedia.org/wiki/Transportation_theory_(psychology)" "narrative transportation").}}
    @(hr)
    @row{
      @col-6{@b{Learning Gains @badge-pill-warning{Information and Values}}}
      @col-6{During Story Mode, students may learn many things -- but the @b{type} of thing that stories teach is always the same.  Stories communicate @b{information and values}.}}
  })
