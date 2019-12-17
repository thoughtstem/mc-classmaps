#lang at-exp racket

(provide intro-jam)

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

(define (intro-jam)
  (with-tags (list meta-classroom)
    (story-mode "Final Jam Rules & Resources" 10
                "Prepare to JAM OUT"
                @story-text{
                  Coach introduces rule, resources, and sets students up for success in their final jam...


                })))

