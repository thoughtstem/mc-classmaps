#lang at-exp racket

(provide unplugged-games ;don't forget to add new games to this list if you want them to be tested!
         pattern-prediction
         person-bot)

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt"
         (except-in 2htdp/image frame))

;Language standardization:
; use TEAM instead of CLASS
; use Player instead of STUDENT

(define (person-bot)
 (with-tags
  (list unplugged communication teamwork competitive-option k2 3rd-5th)
  (game-mode "Person-Bot (or Code the Coach/Kid)" 15
   "Team works together to 'code' a Bot (the Coach or a Player) to achieve a Goal."
   (game-info
    (supplies-list)
    (game-instructions
     (steps "Coach sets the Goal (see Example Goals below)"
            "Coach picks a Bot -- often the Coach themselves for the first round"
            "Coach picks 1-3 Bot Coders"
            "Bot Coders work as a team to give clear, exact instructions to Bot to achieve the Goal"
            "Bot follows the instructions EXACTLY (see Example Instructions below)"
            "Follow up with additional rounds with new Bots and new Bot Coders")
     (h5 "Example Goals:")
     (ul
      (li "Get from Point A to B (ideal with some obstacles in the way!)")
      (li "Move the book from the table to the shelf")
      (li "Draw a smiley face on the white board")
      (li "Put on your sweatshirt"))
     (h5 "Example Clear, Executable Instructions:")
     (ul
      (li "Take 3 steps forward")
      (li "Turn 1 quarter turn to your left")
      (li "Grab the sweatshirt with your right hand"))
     (h5 "Example UNCLEAR, Inexecutable Instructions:")
     (ul
      (li "Turn around (Bot does a 360 spin, ends up exactly where they were)")
      (li "Go backwards (Bot walks backwards -- and keeps going!)")
      (li "Go to the shelf (Bot makes error sound or shrugs -- what is 'the shelf?')")
      (li "Put the sweatshirt over your head (Bot holds the sweatshirt up in the air, over their head)")))
    (tips "Players as Bots may need help following directions EXACTLY and not making assumptions or going out of their way to wrongly interpret a clear instruction!"
          "Variation: Have the Bot leave the room when the Goal is being determined, so they don't know the Goal."
          "Variation: Have all Players be the Bot Coders. All must agree on an instruction and a Master Coder relays that to the Bot."
          "Variation: Team works together to write down all their instructions at once, before the Bot reads and executes all the instructions in a row. Great for predictive thinking!"
          "Variation: Include a Bot error sound/response that the Bot uses when given an unclear instruction.")))))




(define (pattern-prediction)
 (define (??)
  (overlay
   (text "?" 12 'yellow)
   (square 20 'solid 'black)))

 (with-tags
  (list unplugged patterns k2 middle-school high-school)
  (game-mode "Pattern Prediction" 15
   "Coach shows an unfinished pattern and the Team guesses the ending."
   (game-info
    (supplies-list "whiteboard (paper can work for small Teams)"
                   "Writing utensils")
    (game-instructions
     (steps 
       "Coach writes out the first several pieces of a pattern (see examples below)"
       "Players guess the next piece in the pattern")
     (h5 "Example Patterns:")
     (p (write-img
            (beside
              (circle 10 'solid 'red)
              (circle 10 'solid 'green)
              (circle 10 'solid 'blue) 
              (circle 10 'solid 'red) 
              (circle 10 'solid 'green) 
              (??))))
       (p (write-img
           (above
            (beside
              (circle 10 'solid 'red)
              (circle 10 'solid 'green)
              (circle 10 'solid 'blue))
            (beside
              (circle 10 'solid 'yellow)
              (circle 10 'solid 'red) 
              (circle 10 'solid 'green))
            (beside
              (circle 10 'solid 'blue)
              (circle 10 'solid 'yellow) 
              (??)))))
       (p (write-img
           (beside
            (triangle 10 'solid 'blue)
            (circle   10 'solid 'blue)
            (square   10 'solid 'blue)
            (triangle 10 'solid 'red)
            (circle   10 'solid 'red)
            (??))))
       )
    (tips "Variation: Give Players paper and have each them draw their answers before calling on one to draw on the board."
          "Give Players paper and have each of them draw a pattern. Collect the papers and use those patterns to create new puzzles."
     )))))




(define (unplugged-games)
  (list
   (person-bot)
   (pattern-prediction)
   ))


(module+ test
  (require rackunit)

  (unplugged-games))
