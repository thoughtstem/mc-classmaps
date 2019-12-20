#lang at-exp racket

(provide unplugged-games
         code-the-coach)

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt")

;Language standardization:
; use TEAM instead of CLASS
; use Player instead of STUDENT

(define (code-the-coach)
 (with-tags
  (list k2 middle-school high-school)
  (game-mode "Code the Coach" 15
   "Team works together to 'code' the Coach like a bot to achieve a goal"
   (game-info
    (supplies-list)
    (game-instructions
     (setup "Set a start and finish line in the space, with obstacles like chairs/tables/steps between the two.")
     "1-3 \"Bot Coders\" give step by step instructions to \"Coach-Bot\" to get the Coach from the Start to the Finish line. Coach follows the instructions as exactly as possible -- failing to correctly \"execute\" instructions that are vague, unclear or wrong. Change Bot Coders every round."
     (h5 "Example Clear, Executable Instructions:")
     (ul
      (li "Take 3 steps forward")
      (li "Turn 1 quarter turn to your left"))
     (h5 "Example UNCLEAR, Inexecutable Instructions:")
     (ul
      (li "Turn around")
      (li "Go backwards")))
    (tips "Variation: Change the goal to be something like \"Put on a sweatshirt\" or \"Move the book from the table to the shelf\"."
          "Variation: Have all Players be the Bot Coders -- all must point in the same direction before the Coach-Bot moves."
          "Variation: Team works together to write down all their instructions at once, before the Coach-Bot reads and executes the instructions. Great for predictive thinking!"
          "Variation: Include a Coach-Bot error sound/response that the Coach uses when given an unclear instruction.")))))





(define (unplugged-games)
  (list
   (code-the-coach)
   ))


(module+ test
  (require rackunit)

  (unplugged-games))
