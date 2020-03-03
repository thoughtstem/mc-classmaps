#lang at-exp racket

(provide coa-stories
         overcome-the-unknown-fable
         bug-hunter-fable
         teach-the-team-fable
         coa-focus
         all-code-of-awesomeness-fables)

(require 
 website/bootstrap
 website-js/components/accordion-cards
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering
 "./overcome-the-unknown.rkt"
 "./be-a-bug-hunter.rkt"
 "./teach-the-team.rkt")


;Add stories here for testing and rolling out to Stories tab on site
(define (all-code-of-awesomeness-fables)
  (list (overcome-the-unknown-fable)
        (bug-hunter-fable)
        (teach-the-team-fable)
        (coa-focus)))

(module+ test
  (require rackunit)

  (all-code-of-awesomeness-fables))

;============

(define (coa-stories)
  (with-tags 
    (list fable multi code-of-awesomeness)
    (story-mode "Code of Awesomeness Fables" 30
                "A story comparision activity that introduces the Code of Awesomeness Codes with these fables.  The Code of Awesomeness is a chance to discuss critical values while learning to code.  It also (along with the Code of Awesomeness Game Modes) provides an opportunity to co-create call-and-response traditions within a group of students -- great for team-building and for forging a strong group identity."

                @story-text{Read the following stories and discuss:

                 @(embedded-stories
                   (overcome-the-unknown-fable)
                      
                   (bug-hunter-fable)
                      
                   (teach-the-team-fable))
                   
                 @(question-section
                   (comprehension-questions
                     '("What is an alegory?" 
                       "An alegory is a story whose true meaning is encoded -- where each story part seems to mean one thing but actually means something different."))
                   (creativity-questions
                     "What is each story an alegory for?"
                     "Pick one story.  Write down notes about that story on the board.  Discuss which of those parts has a hidden meaning."
                     "Which of the stories might be an alegory for more than one thing?  How so?"))
               })))

;==========


(define (coa-focus)
  (with-tags (list meta-classroom fable)
    (story-mode "Code of Awesomeness Focus" 5
                "Review all Codes of Awesomeness as a group and choose one to make into a theme for the day."
                @story-text{
                 @(tips "Values discussed in one class should be reenforced in subsequent classes.  That's the point of this Story Mode."
                        "If you know that the class needs to focus on a particular set of ideas, tell them that; and tell them why.  Then lead a discussion about how that Code of Awesomeness will help them practice those ideas." 
                        "If it doesn't matter which set of ideas the team focuses on today, let the group choose (or perhaps vote on) the Code of Awesomeness to focus on."
                        "Use the discussion questions below as a way to start this Story Mode.")

                 @(comprehension-questions
                    "Who can tell me the three Codes of Awesomeness we selected as a class?"  
                    "Which one shall we focus on today and why?") 
                })))

