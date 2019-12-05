#lang at-exp racket

(provide coa-stories
         class-intro-story
         bug-hunter-story
         overcome-the-unknown-story
         energize-the-team-story
         coach-story
         hello-world-story
         meta-story
         all-stories)

(require website/bootstrap
         "../base.rkt"
         "../rendering.rkt")

(define (coa-stories)
  (story-mode "Code of Awesomeness Fables" 15
              (div
               (p "Read the following stories and discuss:")
               (mode->content-card 
                #:fade? #f
                (overcome-the-unknown-story))
      
               (mode->content-card 
                #:fade? #f
                (bug-hunter-story))
      
               (mode->content-card 
                #:fade? #f
                (energize-the-team-story)))))

;===== individual CoA fables =====

(define (overcome-the-unknown-story)
  (story-mode "Overcome the Unknown Fable" 5
              (div
               (p "Once upon a time...")
               (ipsum 50))))


(define (bug-hunter-story)
  (story-mode "Be a Bug Hunter Fable" 5
              (div
               (p "Once upon a time...")
               (ipsum 50))))

(define (energize-the-team-story)
  (story-mode "Energize the Team Fable" 5
              (div
               (p "Once upon a time...")
               (ipsum 50))))

;========


(define (coach-story)
  (story-mode "Coach Story" 5
              (div
               (p "Tell your coach story")
               (ipsum 50))))

(define (class-intro-story)
  (story-mode "Class Introduction Story" 3
              (div
               (p "Introduce the language you will be learning in class.")
               (p "Introduce the gamification elements you will be using in class (badges, dollars, market, etc)."))))

(define (hello-world-story)
  (story-mode "Hello World Story" 5
              (div
               (p "Tell the story of 'Hello World' and why it is the name of the first kata.")
               (ipsum 50))))

;TODO: make more functionalized -- pass in discussion points?
;make multiple kinds of meta stories? coach sumup, student reflection, reminder, badges, etc
(define (meta-story)
  (story-mode "Meta Story" 5
              (div
               (p "Sum up with day with...")
               (ipsum 50))))


(define (all-stories)
  (list
   (coach-story)
   (class-intro-story)
   (coa-stories)
   (bug-hunter-story)
   (overcome-the-unknown-story)
   (energize-the-team-story)
   (hello-world-story)
   (meta-story)
   ))

