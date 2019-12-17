#lang at-exp racket

(provide rethinking-bugs)

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

(define (rethinking-bugs)
  (with-tags (list debugging)
    (story-mode "Bugs in the brain" 15
                "Many young coders (all the way through college and their first few years on the job) seem to think that bugs happen by magic.  In reality, they happen because coders are not self-aware enough."
                @story-text{
                  @quotation{ 
                    If you debug one bug, you've just debugged one bug.  If you debug your thinking, you've debugged a thousand bugs.  If you've debugged someone else's thinking, please tell me how you did it -- because I never can. ~Stephen R. Foster, MetaCoders Founding Member }
                
                  @(question-section
                    (comprehension-questions
                      "What is the difference between a bug and a mistake?")
                    (creativity-questions
                      "What causes bugs?"
                      "What causes mistakes?"
                      "Why is it often hard for people to admit their mistakes?"
                      "What are some ways you can reduce the number of mistakes you make?"
                      "What might constitute a bug in an English essay?"
                      "What's the difference between a bug and a mistake in an English essay??"
                      )) 
                   
                
                })))


