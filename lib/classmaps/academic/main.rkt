#lang at-exp racket

;A place to define more "academic" classmaps and classmap sequences.
;Good for use in in-school programs and more academically-focussed after-school programs

(require website/bootstrap
         "../../base.rkt"
         "../../rendering.rkt"
         "../../game-modes/main.rkt"
         "../../story-modes/main.rkt")

(provide computational-thinking-for-young-elementary-pack)

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

(define (inputs/outputs:depth-1 #:intro (intro (story-stub "Day Intro" 5 "What are we doing today?")))
  (classmap "Intro to Inputs/Outputs"
            ""
            (list
              intro
              (code-the-coach) 

              )))

(define (bugs:depth-1 #:intro intro)
  (classmap "Intro to Bugs"
            ""
            (list
              intro
              (code-the-coach-with-errors) 
            
             )))
            
(define (pattern-recognition:depth-1 #:intro intro)
  (classmap "Intro to Pattern Recognition"
            ""
            (list
              intro
              (patterns-on-the-board) 
            
              )))

(define (computational-thinking-for-kinder-pack)
  (list 
    (inputs/outputs:depth-1 
      #:intro (story-stub "Intro" 5 "Why are we here?")) 

    (bugs:depth-1
      #:intro (story-stub "Review" 5 "What did we do last time?")) 
   
    (pattern-recognition:depth-1
      #:intro (story-stub "Review" 5 "What did we do last time?")) 

    #|
    (inputs/outputs:depth-2) 
    (bugs:depth-2)
    (pattern-recognition:depth-2)
    
    (inputs/outputs:depth-3) 
    (bugs:depth-3)
    (pattern-recognition:depth-3)

    (metacognition:depth-1) 
    |#

  ))

(define (computational-thinking-for-young-elementary-pack)
  (list 
  ))

(define (computational-thinking-for-upper-elementary-pack)
  (list 
  ))

