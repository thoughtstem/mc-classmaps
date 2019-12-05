#lang at-exp racket

(provide coa-mottos-game 
         disintegrating-code-game
         hello-world-beginner-game
         name-memory-game
         all-games)

(require website/bootstrap
         "../base.rkt"
         "../rendering.rkt")

(define (coa-mottos-game)
  (game-mode "Code of Awesomeness Mottos" 15
    (div
      (p "Have them come up with mottos for the following ...")
      (ipsum 50))))

(define (disintegrating-code-game)
  (game-mode "Disintegrating Code" 15
    ;TODO: Don't use a raw div here.  Call a function to standardize the visual language.
    (div
      ;Todo, make a function for (step ...)
      (p "Step 1: Pick a translation challenge.  ")
      (p "Step 2: ..."))))

(define (hello-world-beginner-game)
  (game-mode "Hello World Game" 10
    (div
      (p "Run Disintegrating code, using the Hello World kata in your #lang")

      (mode->content-card 
        #:fade? #f
        (disintegrating-code-game))
      )))

(define (name-memory-game)
  (game-mode "Name Memory Game" 5
    (div
      (p "In a circle, each player introduces themselves and says a quick fact about themselves, as well as reviewing the names and facts of all students who have gone before them.")
      )))

(define (all-games)
  (list
    (coa-mottos-game)
    (name-memory-game)
    (disintegrating-code-game)
    (hello-world-beginner-game)
    ))
