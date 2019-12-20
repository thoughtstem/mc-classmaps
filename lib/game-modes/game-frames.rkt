#lang at-exp racket

(provide add-pair-programming
         example-game
         game-frames)

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt")

;Language standardization:
; use TEAM instead of CLASS
; use Player instead of STUDENT



;=== for rendering purposes =====
(define (example-game)
  (game-mode "EXAMPLE GAME" 5
             "This game is a not a real game"
             (game-info
              (supplies-list)
              (game-instructions
               "No really, stop trying to play it."))))
;===============================


(define/contract (add-pair-programming g)
  (-> game-mode? game-mode?)
  (game-mode (~a "Pair Programming: " (game-mode-name g)) (game-mode-minutes g)
             (~a (game-mode-name g) ": now with more TEAMWORK")
             (game-info
              (supplies-list)
              (game-instructions
               "Play the game below, but use pair programming techniques. Partner up the Players and have them play as a team, replacing every mention of a single Player in the game below with that partnership:"
              
              (mode->content-card 
               #:fade? #f
               g)))))




(define (game-frames)
  (list
   (add-pair-programming (example-game))))


(module+ test
  (require rackunit)

  (game-frames))
