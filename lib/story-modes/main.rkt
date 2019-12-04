#lang at-exp racket

(provide coa-stories coach-story all-stories)

(require website/bootstrap
         "../base.rkt")

(define (coa-stories)
  (story-mode "Code of Awesomeness Stories" 10
    (div
      (p "Read the following stories...")
      (ipsum 50))))

(define (coach-story)
  (story-mode "Coach Story" 5
    (div
      (p "Tell your coach story")
      (ipsum 50))))

(define (all-stories)
  (list 
    (coach-story)
    (coa-stories)))

