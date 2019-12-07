#lang at-exp racket

(require website/bootstrap
         "../base.rkt"
         "../rendering.rkt"
         "../game-modes/main.rkt"
         "../story-modes/main.rkt")

(provide all-classmaps 
         class-launch-map
         coa-focus-map
         first-badge-map
         bugs-map
         final-jam-map)

;classmap struct: add desc or tips


(define (class-launch-map)
  (classmap "Class Launch Map"
    (list (coach-story)
          (name-memory-game)
          (class-intro)
          (story-with-minutes 12 (coa-stories))
          (coa-mottos-creation)
          (hello-world-story)
          (hello-world-beginner-game)
          (meta-story-one-word))))

;add tip: feel free to change around the amount of time of the game modes, 
(define (coa-focus-map)
  (classmap "Code of Awesomeness Focus Map"
    (list (coa-focus)
          (game-with-minutes 25 (code-anatomy))
          (meta-story-reflect "the Code you chose to focus on")
          (game-with-minutes 15 (disintegrating-code))
          (meta-story-deep-reflect "the Code you chose to focus on")
          )))

(define (first-badge-map)
  (classmap "First Badges Awarded Map"
    (list (badge-story)
          (game-with-minutes 20 (code-anatomy))
          (game-with-minutes 15 (add-pair-programming (create-a-challenge)))
          (market-time)
          (meta-story-badges))))

(define (bugs-map)
  (classmap "All About Bugs"
    (list (first-bug-story)
          (y2k-bug-story)
          (game-with-minutes 15 (add-pair-programming (build-a-bug-workshop)))
          (rethinking-bugs)
          (build-a-bug-workshop)
          (meta-story-deep-reflect "what we learned about bugs today"))))

(define (final-jam-map)
  (classmap "Final Jam Map"
    (list (lock-story-mode (intro-jam))
          (game-with-minutes 25 (final-jam))
          (lock-game-mode (scoring-jam))
          (lock-game-mode (market-time))
          (lock-story-mode (meta-story-badges))))) 

;===========================

;Classmaps to create:
; Class Launch Intermediate with whole-class brainstorm and code anatomy
; Class Launch: Large Class with breakout brainstorm and disitegrating code
; Final Jam With Review
; All Unplugged
; Developer Role Play
; 




(define (all-classmaps)
  (list (class-launch-map)
        (coa-focus-map)
        (first-badge-map)
        (bugs-map)
        (final-jam-map)
        ))
