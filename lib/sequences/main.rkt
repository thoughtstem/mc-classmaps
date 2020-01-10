#lang at-exp racket

(provide basic-sequence
         all-sequences)

(require mc-classmaps/lib/base
         mc-classmaps/lib/classmaps/main)

(define (basic-sequence)
  (sequence
    ;Aka: Baby Coach's First Maps!
    ;  Easter egg: If you are a coach looking at this code.  Don't worry.  You're not a baby.  You wouldn't be browsing through code on Github if you were.  :)
    "8-week Starter Set"

    ;TODO: Say more about the scientific grounding of the maps in this sequence.
    "This is a sequence of classmaps that is ideal for beginning coaches and for students of various levels."

    ;TODO: Add the rest 
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

(define (all-sequences)
  (list
    (basic-sequence)))
