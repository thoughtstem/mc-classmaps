#lang at-exp racket

(provide coa-mottos-creation
         disintegrating-code
         hello-world-beginner-game
         name-memory-game
         final-jam
         scoring-jam
         market-time
         code-anatomy
         all-games)

(require website/bootstrap
         "../base.rkt"
         "../rendering.rkt")

(define (coa-mottos-creation)
  (game-mode "Code of Awesomeness Mottos" 15
             (div
              (p "Have them come up with mottos for the following ...")
              (ipsum 50))))

(define (disintegrating-code)
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
               (disintegrating-code))
              )))

(define (name-memory-game)
  (game-mode "Name Memory Game" 5
             (div
              (p "In a circle, each player introduces themselves and says a quick fact about themselves, as well as reviewing the names and facts of all students who have gone before them.")
              )))

(define (final-jam)
  (game-mode "Final Jam" 20
             (div
              (p "Students take everything they have learned and build a game or other program in the language they have been studying. Usually a partnered game."))))

(define (scoring-jam)
  (game-mode "Final Jam Scoring & Awarding" 10
             (div
              (p "Students score their own creation using the following formula with the coach's guidance...")
              )))

(define (market-time)
  (game-mode "Market" 10
             (div
              (p "Note that time greatly depends on number of students. Coach steps into the role as the Shop Keeper and students can use their fake money to purchase small toys etc.")
              )))

(define (code-anatomy)
  (game-mode "Code Anatomy" 15
             (div
              (p "Team works together to label different parts of the code, then recall the code based on those names...")
              )))


(define (all-games)
  (list
   ;first day stuff
   (coa-mottos-creation)
   (name-memory-game)
   (hello-world-beginner-game)
   ;code games
   (code-anatomy)
   (disintegrating-code)
   ;final game stuff
   (final-jam)
   (scoring-jam)
   ;misc games
   (market-time)
   ))
