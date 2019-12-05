#lang at-exp racket

(provide coa-stories
         class-intro
         bug-hunter-fable
         overcome-the-unknown-fable
         energize-the-team-fable
         coach-story
         hello-world-story
         meta-story-one-word
         meta-story-reflect
         meta-story-deep-reflect
         meta-story-next-time
         meta-story-badges
         intro-jam
         coa-focus
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
                (overcome-the-unknown-fable))
      
               (mode->content-card 
                #:fade? #f
                (bug-hunter-fable))
      
               (mode->content-card 
                #:fade? #f
                (energize-the-team-fable)))))

;===== individual CoA fables =====

(define (overcome-the-unknown-fable)
  (story-mode "Overcome the Unknown Fable" 5
              (div
               (p "Once upon a time...")
               (ipsum 50))))


(define (bug-hunter-fable)
  (story-mode "Be a Bug Hunter Fable" 5
              (div
               (p "Once upon a time...")
               (ipsum 50))))

(define (energize-the-team-fable)
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

(define (class-intro)
  (story-mode "Class Introduction Story" 3
              (div
               (p "Introduce the language you will be learning in class.")
               (p "Introduce the gamification elements you will be using in class (badges, dollars, market, etc)."))))

(define (hello-world-story)
  (story-mode "Hello World Story" 5
              (div
               (p "Tell the story of 'Hello World' and why it is the name of the first kata.")
               (ipsum 50))))

(define (intro-jam)
  (story-mode "Final Jam Rules & Resources" 10
              (div
               (p "Coach introduces rule, resources, and sets students up for success in their final jam..."))))

(define (coa-focus)
  (story-mode "Code of Awesomeness Focus" 5
              (div
               (p "Review all Code of Awesomeness codes and mottos. Coach or team chooses one in particular to focus on today..."))))


;======== META STORIES/REFLECTIONS =========

(define (meta-story-one-word)
  (story-mode "Meta Story: One Word" 5
              (div
               (p "Each student shares one word about their experience in class that day..."))))

;TODO: functionalize this to add what students should reflect on?
(define (meta-story-reflect (topic "what the team did and learned today."))
  (story-mode "Meta Story: Reflection" 5
              (div
               (p (~a "Briefly reflect on " topic "...")))))

;TODO: functionalize this to add what students should reflect on?
(define (meta-story-deep-reflect (topic "what the team did and learned today."))
  (story-mode "Meta Story: Deep Reflection" 10
              (div
               (p "Reflect on " topic " giving the time and guidance for deeper, more meaningful reflection."))))

;TODO: functionalize this to add what to say about next week?
(define (meta-story-next-time)
  (story-mode "Meta Story: Next Time..." 3
              (div
               (p "Coach reminds students of something to do/bring/remember about next class..."))))

(define (meta-story-badges)
  (story-mode "Meta Story: Badges" 5
              (div
               (p "Coach awards badges to students who have earned it and reminds others when they will earn theirs..."))))




(define (all-stories)
  (list
   (coach-story)
   (class-intro)
   (coa-stories)
   (bug-hunter-fable)
   (overcome-the-unknown-fable)
   (energize-the-team-fable)
   (hello-world-story)
   (meta-story-one-word)
   (meta-story-reflect)
   (meta-story-deep-reflect)
   (meta-story-next-time)
   (meta-story-badges)
   (intro-jam)
   (coa-focus)
   ))

