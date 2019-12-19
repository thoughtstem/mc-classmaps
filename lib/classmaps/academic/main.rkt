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
   "Players code the Coach, as if the Coach were a computer"
   (game-info
    (supplies-list)
    (game-instructions
     (steps 
       ;"Coach picks a goal"

       "Coach announces their Start location and End location"
       "Coach announces the students must get the Coach from Start to End"

       ;"Coach sets language students may use"



       ))
    (tips )))))

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

