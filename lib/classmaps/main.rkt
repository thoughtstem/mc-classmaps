#lang at-exp racket

(require website/bootstrap
         "../base.rkt"
         "../rendering.rkt"
         "../game-modes/main.rkt"
         "../story-modes/main.rkt")

(provide all-classmaps 
         class-launch-map
         final-jam-map)




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

(define (coa-focus-map)
  (classmap "Code of Awesomeness Focus Map"
    (list (coa-focus)
          (game-with-minutes 25 (code-anatomy))
          (meta-story-reflect "the Code you chose to focus on")
          (game-with-minutes 15 (disintegrating-code))
          (meta-story-deep-reflect "the Code you chose to focus on")
          )))

(define (final-jam-map)
  (classmap "Final Jam Map"
    (list (lock-story-mode (intro-jam))
          (game-with-minutes 25 (final-jam))
          (lock-game-mode (scoring-jam))
          (lock-game-mode (market-time))
          (lock-story-mode (meta-story-badges))))) 

;===========================





(define (all-classmaps)
  (list (class-launch-map)
        (coa-focus-map)
        (final-jam-map)
        ))
