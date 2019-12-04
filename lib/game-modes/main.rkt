#lang at-exp racket

(provide coa-mottos 
         hello-world-game
         disintegrating-code-game
         all-games)

(require website/bootstrap
         "../base.rkt"
         "../rendering.rkt")

(define (coa-mottos)
  (game-mode "Code of Awesomeness Mottos" 10
    (div
      (p "Have them come up with mottos for the following ...")
      (ipsum 50))))

(define (disintegrating-code-game)
  (game-mode "Disintegrating Code" 10
    ;TODO: Don't use a raw div here.  Call a function to standardize the visual language.
    (div
      ;Todo, make a function for (step ...)
      (p "Step 1: Pick a translation challenge.  ")
      (p "Step 2: ..."))))

(define (hello-world-game)
  (game-mode "Hello World Game" 10
    (div
      (p "Run Disintegrating code, using the Hello World kata in your #lang")

      (mode->content-card 
        #:fade? #f
        (disintegrating-code-game))

      #;(game-mode-data (disintegrating-code-game))

      (ipsum 50)
      )))

(define (all-games)
  (list
    (coa-mottos)
    (disintegrating-code-game)
    (hello-world-game)))
