#lang at-exp racket

(provide story-mode-tab-pane
         story-mode-main-points)

(require website/bootstrap
         mc-classmaps/lib/mode-search
         mc-classmaps/lib)

(define (story-mode-tab-pane (pane tab-pane))
 (pane id: "story-modes" class: "p-3" 
  (include-js "https://d3js.org/d3.v5.min.js")

  @h3{@(story-icon) Story Modes}
  (card
    (card-text
      (card-body
        (story-mode-main-points))))
  @h3[class: "pt-3"]{The Story Mode database}
  (search (all-tags) (all-stories))))

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
