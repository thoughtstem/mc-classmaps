#lang at-exp racket

(provide coa-mottos-creation
         final-jam
         scoring-jam
         market-time
         
         class-mechanics-games)

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt")

;Language standardization:
; use TEAM instead of CLASS
; use Player instead of STUDENT




;===== CLASS LAUNCH GAMES =====

(define (coa-mottos-creation)
  (game-mode "Code of Awesomeness Mottos" 15
             "Create your teams' mottos for each Code"
             (game-info
              (supplies-list)
              (game-instructions
               (steps "Have them come up with mottos for the following ...")))))


;====== FINAL JAM =======

(define (final-jam)
  (game-mode "Final Jam" 20
             "The end of most courses!"
             (game-info
              (supplies-list)
              (game-instructions "Students take everything they have learned and build a game or other program in the language they have been studying. Usually a partnered game."))))

(define (scoring-jam)
  (game-mode "Final Jam Scoring & Awarding" 10
             "Students score their own creation using the following formula with the Coach's guidance."
             (game-info
              (supplies-list)
              (game-instructions "DO IT"))))

; ===== MISC ======

(define (market-time)
  (game-mode "Market" 10
             "Everyone loves buying stuff"
             (game-info
              (supplies-list)
              (game-instructions "Note that time greatly depends on number of students. Coach steps into the role as the Shop Keeper and students can use their fake money to purchase small toys etc.")
              (tips "Organize your Market like an Arcade"))))






(define (class-mechanics-games)
  (list
   (coa-mottos-creation)
   (final-jam)
   (scoring-jam)
   (market-time)
   ))


(module+ test
  (require rackunit)

  (class-mechanics-games))
