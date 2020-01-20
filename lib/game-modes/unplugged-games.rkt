#lang at-exp racket

(provide unplugged-games ;don't forget to add new games to this list if you want them to be tested!
         pattern-prediction
         person-bot
         chain-reaction)

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



;could have versions with other outputs (drawing?)
(define (chain-reaction)
  (with-tags
      (list unplugged active competitive-option language simple k2 3rd-5th middle-school high-school)
    (game-mode "Chain Reaction" 10
               "Define multiple bot-groups with different definitions and create a chain reaction..."
               (game-info
                (supplies-list "Optional: whiteboard for writing language definitions")
                (game-instructions
                 
                 (h5 (i "Level 1 -- Multiple Bot Groups"))
                 (steps "Coach splits all Players into 2 bot-groups"
                        "Coach gives each group an identifier (name) (see tips for suggestions)"
                        (list "Coach defines a language with inputs and various ouputs for the different bot groups. Include:"
                              (ul (li "Inputs that 1 bot group receives but means nothing to the other bot group (ex. 1 Clap = A-bots jumps in place // 2 Claps = B-bots jumps in place)")
                                  (li "Inputs that trigger different outputs (ex. say \"Blorp\" = A-bots crouch to the ground/B-bots turn in a circle)")
                                  (li "Inputs that trigger the same output (ex. Point = A-bots and B-bots look in pointed direction and gasp dramatically)")))
                        "Coach programs the bots using the defined language"
                        "Repeat steps 3 and 4, adding more definitions to the language each time")
                 (hr)
                 (h5 (i "Level 2 -- Chain Reactions"))
                 (steps (list "Coach adds new definitions to the language that include chain reaction potential: an output is the input for another bot-group. An example:"
                              (ul (li "Thumbs up = B-bots clap 1 time")
                                  (li "say \"Beep Beep\" = A-bots give thumbs up")))
                        "Avoid definitions that could create loops! (see level 3)"
                        (list "Coach clarifies: Bots can now receive input from " (i "anywhere outside their own group") ", not just Coach")
                        "Coach programs the bots, starting simple chain reactions"
                        (list "Repeat steps 1 and 4, adding more to the language each time. An example:"
                              (ul (li "say \"Road Runner!\" = B-bots say \"Beep Beep\""))))
                (hr)
                (h5 (i "Level 3 -- Infinite Loops"))
                (steps (list "Coach adds more complex definitions to the language; creating possible infinite loops. An example:"
                             (ul (li "X jump(s) = A-bots and B-bots jump (X+1) times")))
                       "Coach programs the bots"
                       "Coach starts an infinite loop"
                       "Once never-ending loop is clear to Players, Coach pauses game"
                       "Coach leads quick discussion: What just happened?"
                       "Coach continues game, can delete loop-causing definitions or keep them in play")
                (hr)
                (h5 (i "Level 4 -- More Bots"))
                (steps "Coach splits groups further, into three or even four groups"
                       "Coach adds to language accordingly, before programming bots"))

                (tips "Group identifiers can be as simple as A-bots and B-bots. Or you can try colors, animals, computer-themed (ex. Android bots and iPhone/iOS bots), or anything the Players choose."
                      "Be prepared for loops before starting level 3! When a loop starts, the game will disitegrate into giggles/some amount of chaos. That's okay! Just be prepared to re-gather attention and focus back."
                      "Add a \"Hold\" and \"Run\" command -- where Coach can pause all bots, give a couple commands in a row, before \"running\" the code, having bots run those commands consecutively."
                      "Can be made into an elimination-style competitive game."))
               )))




(define (unplugged-games)
  (list
   (person-bot)
   (pattern-prediction)
   (chain-reaction)
   ))


(module+ test
  (require rackunit)

  (unplugged-games))
