#lang at-exp racket

(provide game-mode-tab-pane
         game-mode-main-points)

(require website/bootstrap
         mc-classmaps/lib)

(define (game-mode-tab-pane)
 (tab-pane id: "game-modes" class: "p-3" 
  @h3{@(game-icon) Game Modes}
  (card
    (card-text
      (card-body
        (game-mode-main-points))))
  @h3[class: "pt-3"]{The Game Mode database}
  (map mode->html (all-games))))

(define (game-mode-main-points)
 @div{
   @p{Game Modes all have a few things in common.}
   @(hr)
   @row{
     @col-6{@b{Focal Points @badge-pill-warning{Many}}}
     @col-6{Students have multiple points of focus -- a few may be focused on one computer and activity here, and someone working solo on another task over there, these two working with a coach here...}}
   @(hr)
   @row{
     @col-6{@b{Energy Level @badge-pill-warning{High}}} 
     @col-6{Students are striving to achieve a well-defined goal -- and heartrates may be higher (compared to listening to stories).  It's the kind of energy you experence when you have to finish a difficult but acheivable task under time pressure.}}
   @(hr)
   @row{
     @col-6{@b{Comfort Zone @badge-pill-warning{Outside}}}
     @col-6{Students are slightly outside of their comfort zone.  Psychologists use the term "flow state" to describe what we experience when we play games -- when we are doing something that is not too easy (so we need to focus) and not too hard (so we stay engaged), challenging but acheivable.}}
   @(hr)
    @row{
     @col-6{@b{Learning Gains @badge-pill-warning{Skills and Fluencies}}}
     @col-6{During Game Mode, students may learn many things -- but the @b{type} of thing they teach is always the same.  Games train @b{skills and fluencies}.}}
 })
