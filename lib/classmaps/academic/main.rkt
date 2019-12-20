#lang at-exp racket

;A place to define more "academic" classmaps and classmap sequences.
;Good for use in in-school programs and more academically-focussed after-school programs

(require website/bootstrap
         "../../base.rkt"
         "../../rendering.rkt"
         "../../game-modes/main.rkt"
         "../../story-modes/main.rkt"
         "../../tags/main.rkt"
         (except-in 2htdp/image frame))

(provide 
  computational-thinking-for-young-elementary-pack
  computational-thinking-for-kinder-pack
  )

(define (story-stub title time . notes)
  (story-mode title time "" 
    @div{
      @notes
    }))

(define (game-stub title time . notes)
  (game-mode title time "" 
    @div{
      @notes
    }))

(define (code-the-coach)
 (with-tags
  (list k2 middle-school high-school)
  (game-mode "Code the Coach" 15
   ;"Players use a Coach-defined language to write/speak/sign programs that the Coach will execute to perform some task"
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


(define (code-the-bot-with-language 
          #:name (name "Code the Bot (with language)")
          #:operations (operations (list "Player says \"Move Forward\"" 
                                         "Player says \"Turn Right\""))
          #:meanings   (meanings (list "Bot moves one normal step forward" 
                                       "Bot turns 90 degrees"))
          #:goals      (goals (list "Get bot from point A to point B"))
)

 (define (op o m)
   (ul (li (b "Input: ") o) 
       (li (b "Output: ") m)))

 (with-tags
  (list k2 middle-school high-school)
  (game-mode name 15
   ;"Players use a Coach-defined language to write/speak/sign programs that the Coach will execute to perform some task"
   "Team works together to 'code' the Coach like a bot to achieve a goal -- but must use an agreed upon language."
   (game-info
    (supplies-list)
    (game-instructions
      (div
        (div
          "Discuss the following operations and what they mean:" 
          (ul
            (map op operations meanings))))
      "Do some examples"
      "Pick a Bot (usually the Coach, if it is the first time playing the game)"
      "Team tries to get the Bot to accomplish the following goal(s), using only the permitted language"
      (ul
        (map li goals)))
    (tips
      "Switch out who is the bot"
      "Pick two bots and two goals, have two teams (in parallel) try to get their bot to achieve their goal"
      "Make up your own goal"
      "Have the players pick the next goal"
      "Make up a new operation and meaning"
      "Have the players make up a new operation and meaning")))))


(define (code-the-bot:shapes-and-signs)
  (code-the-bot-with-language
    #:name "Code the Bot (Shapes and Sizes)"
    #:operations (list "Player says \"Draw a Circle\" and holds up hands to indicate size"
                       "Player says \"Draw a Square\" and holds up hands to indicate size"
                       "Player says \"Draw a Triangle\" and holds up hands to indicate size"
                       "Player says \"Move pen [Right/Left/Up/Down]\" and holds up hands to indicate distance")
    #:meanings (list "Bot draws a circle of the indicated size"
                     "Bot draws a square of the indicated size"
                     "Bot draws a triangle of the indicated size"
                     "Bot moves pen in the indicated direction in the indicated distance") 
    #:goals  (list "Draw a tree" "Draw a house"  "Draw a cat" 
                   @p{Draw this shape @(br) 
                      @(write-img (above (circle 40 'solid 'red)
                                         (circle 20 'solid 'red)
                                         (beside (triangle 20 'solid 'red) (triangle 20 'solid 'red))))})))

(define (code-the-bot:code-the-bot)
  (code-the-bot-with-language
    #:name "Code the Bot (Meta!)"
    #:operations (list "Player says \"Bot #1 Boink\""
                       "Player says \"Bot #1 Yoink\""
                       "Bot #1 says \"Bot #2 walk forward\""
                       "Bot #1 says \"Bot #2 turn right\"")
    #:meanings (list "Bot #1 says \"Bot #2 walk forward\""
                     "Bot #1 says \"Bot #2 turn right\""
                     "Bot #2 walks one normal step forward"
                     "Bot #2 turns 90 degrees to the right")
    #:goals  (list "Get from point A to point B")))


(define (patterns-on-the-board-game)
 (define (??)
  (overlay
   (text "?" 12 'yellow)
   (square 20 'solid 'black)))

 (with-tags
  (list k2 middle-school high-school)
  (game-mode "Visual Pattern Recognition" 15
   "The Coach comes up with a pattern and the team tries to guess the completion"
   (game-info
    (supplies-list)
    (game-instructions
     (steps 
       "Coach writes the first few terms in some pattern."
       "Team tries to guess the completion(s)."))
    (tips 
       @p{
         @(write-img
            (beside
              (circle 10 'solid 'red)
              (circle 10 'solid 'green)
              (circle 10 'solid 'blue) 
              (circle 10 'solid 'red) 
              (circle 10 'solid 'green) 
              (??)))
       } 
       @p{
         @(write-img
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
              (??))))
       } 
     )))))

(define (inputs/outputs:depth-1 #:intro (intro (story-stub "Day Intro" 5 "What are we doing today?")))
  (classmap "Intro to Inputs/Outputs"
            ""
            (list
              intro
              (code-the-coach) 
              (story-stub "Human Inputs and Outputs" 15
                "Talk about 5 senses (input), and speaking/signing/writing/coding (outputs)")

              (game-stub "Basic Coding Game" 15
                "???")

              (meta-story-one-word)
              )))

(define (bugs:depth-1 #:intro intro)
  (classmap "Intro to Bugs"
            ""
            (list
              intro
              ;Focus on errors here?  (How to communicate "focuses" to a coach)
              (code-the-coach) 
              (story-stub "What is a bug??" 15
                "Introduce the concept of bugs...")
              (game-stub "Basic Coding Game" 15
                "???")
              (meta-story-reflect))))

(define (language:depth-1 #:intro intro)
  (classmap "Intro to Code is Language"
            ""
            (list
              intro
              (code-the-bot-with-language)
              (story-stub "Coach tells story and leads discussion about language" 15
                "Coding is a language to communicate with computers.")
              (game-stub "Basic Coding Game" 15
                "???")
              (meta-story-one-word))))
            
(define (pattern-recognition:depth-1 #:intro intro)
  (classmap "Intro to Pattern Recognition"
            ""
            (list
              intro
              (patterns-on-the-board-game) 
              (story-stub "Pattern in a story (what's next??)" 15
                "e.g. Going on a Bear Hunt")
              (game-stub "Basic Coding Game" 15
                "???")
              (meta-story-one-word))))

(define (inputs/outputs:depth-2 #:intro (intro (story-stub "Day Intro" 5 "What are we doing today?")))
  (classmap "More On Inputs and Outputs"
            ""
            (list
              intro
              ;TODO: Factor this out and give it a name...
              (code-the-bot:shapes-and-signs)
              (story-stub "The World Through Inputs and Outputs" 15
                "Cats/animals"
                "Houses"
                "Bottle/Cup"
                "Fridge"
                "Your Room")

              (game-stub "Basic Coding Game" 15
                "???")

              (meta-story-one-word))))

(define (bugs:depth-2 #:intro intro)
  (classmap "More On Bugs"
            ""
            (list
              intro
              (game-stub "Code the Kid" 15
                "???")

              (bug-hunter-fable)

              (game-stub "Basic Coding Game" 15
                "???")
              (meta-story-reflect)
             )))
            
(define (language:depth-2 #:intro intro)
  (classmap "More on to Code is Language"
            ""
            (list
              intro
              (code-the-bot:code-the-bot)
              (story-stub "Tell a Story with Words Changed" 15
                "Jimmy went on a *Bloop* Hunt")
              (game-stub "Basic Coding Game" 15
                "???")
              (meta-story-one-word))))




(define (inputs/outputs:depth-3 #:intro (intro (story-stub "Day Intro" 5 "What are we doing today?")))
  (classmap "Even More On Inputs and Outputs"
            ""
            (list
              intro
              (game-stub "Code the Kid (with language [new input output])" 15
                "")
              (story-stub "The World Through Inputs and Outputs, Again -- But with specifics..." 15
                "Tell story about a farm.  Farmer buys Cows, sells milk, buys cow food, cleans up cow poop, ...."
                "What I/O systems can we identify from that story... "
                )

              (game-stub "Basic Coding Game" 15
                "???")

              (meta-story-one-word)
              )))



(define (bugs:depth-3 #:intro intro)
  (classmap "Even More On Bugs"
            ""
            (list
              intro
              (game-stub "Code the Kid" 15
                "???")

              (bug-hunter-fable)

              (game-stub "Basic Coding Game" 15
                "???")
              (meta-story-reflect)
             )))
            
(define (language:depth-3 #:intro intro)
  (classmap "Even More on to Code is Language"
            ""
            (list
              intro
              (game-stub "Code the Kid (with language)" 15
                "???")
              (story-stub "Tell a Story with Words Changed" 15
                "Jimmy went on a *Bloop* Hunt")
              (game-stub "Basic Coding Game" 15
                "???")
              (meta-story-one-word))))

(define (computational-thinking-for-kinder-pack)
  (list 
    (inputs/outputs:depth-1 
      #:intro (coach-story)) 

    (bugs:depth-1
      #:intro (story-stub "Review" 5 "What did we do last time?")) 
   
    (language:depth-1
      #:intro (story-stub "Review" 5 "What did we do last time?")) 

    (inputs/outputs:depth-2
      #:intro (story-stub "Review" 5 "What do you remember about Inputs and Outputs?")) 

    (bugs:depth-2
      #:intro (story-stub "Review" 5 "What do you remember about Bugs?")) 

    (language:depth-2
      #:intro (story-stub "Review" 5 "What do you remember about Coding as a Language?")) 
    


    #|
    (inputs/outputs:depth-3) 
    (bugs:depth-3)
    (pattern-recognition:depth-3)
    (metacognition:depth-1) 
    |#

  ))

(define (computational-thinking-for-young-elementary-pack)
  (list 
    (pattern-recognition:depth-1
      #:intro (coach-story))

    ;Consider a literal "decoding" game.
    ; Make your own code (encode something)
  ))

(define (computational-thinking-for-upper-elementary-pack)
  (list 
  ))

