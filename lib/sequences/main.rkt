#lang at-exp racket

(provide basic-sequence
         computational-thinking-for-kinder-sequence
         computational-thinking-for-lower-elementary-sequence
         computational-thinking-for-upper-elementary-sequence
         all-sequences)

(require mc-classmaps/lib/base
         mc-classmaps/lib/classmaps/main
         mc-classmaps/lib/game-modes/main
         mc-classmaps/lib/story-modes/main)

(define (basic-sequence)
  (sequence
    ;Aka: Baby Coach's First Maps!
    ;  Easter egg: If you are a coach looking at this code.  Don't worry.  You're not a baby.  You wouldn't be browsing through code on Github if you were.  :)
    "8-week Starter Set"

    ;TODO: Say more about the scientific grounding of the maps in this sequence.
    "This is a sequence of classmaps that is ideal for beginning coaches and for students of various levels."

    ;TODO: Add Partner Practice map & fine tune final-jam-map
    ;  Issue: https://github.com/thoughtstem/mc-classmaps/issues/12
    (list 
      (class-launch-map)
       (coa:bug-hunter-map)
       (first-badge-map)
       (coa:team-map)
       (bugs-map)
       (coa-focus-map)
       ;missing -- Partner Practice Map
       (final-jam-map))))

(define (computational-thinking-for-kinder-sequence)
  (sequence
    "Computational Thinking Set"

    "This is a sequence of classmaps that uses a blend of unplugged and coding game modes, as well as a variety of story modes."

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
    )))

(define (computational-thinking-for-lower-elementary-sequence)
  (sequence
    "Computational Thinking for Lower Elementary Set"

    "Similar to the Computational Thinking set, but with more coding game modes, this is a sequence of classmaps that uses a blend of unplugged and coding game modes, as well as a variety of story modes."

    (list
     ;unplugged/plugged games
     (inputs/outputs:depth-1 
      #:intro (coach-story))
     ;all plugged games
     (bugs:depth-1:plugged
      #:intro (story-stub "Review" 5 "What did we do last time?"))
     ;unplugged/plugged
     (language:depth-1
      #:intro (story-stub "Review" 5 "What did we do last time?"))
     ;all plugged
     (inputs/outputs:depth-2:plugged
      #:intro (story-stub "Review" 5 "What do you remember about Inputs and Outputs?"))
     ;unplugged/plugged
     (bugs:depth-2
      #:intro (story-stub "Review" 5 "What do you remember about Bugs?")) 
     ;all-plugged
     (language:depth-2:plugged
      #:intro (story-stub "Review" 5 "What do you remember about Coding as a Language?"))
     )))

(define (computational-thinking-for-upper-elementary-sequence)
  (sequence
    "Computational Thinking for Upper Elementary Set"

    "This is a sequence of classmaps that covers similar topics to the other sequences in the Computational Thinking series, at a slightly faster past for a more intermediate level."

    (list
     (inputs/outputs:intermediate
      #:intro (coach-story)
      #:review? #f)

     (bugs:intermediate
      #:intro (story-stub "Review" 5 "What did we do last time?"))

     (language:intermediate
      #:intro (story-stub "Review" 5 "What did we do last time?")))))

(define (all-sequences)
  (list
   (basic-sequence)
    (computational-thinking-for-kinder-sequence)
    ;taken out as not to clutter the live page with unfinished sequences that are not in use
    ;(computational-thinking-for-lower-elementary-sequence)
    ;(computational-thinking-for-upper-elementary-sequence)
    ))
