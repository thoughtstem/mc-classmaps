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
         first-bug-story
         y2k-bug-story
         rethinking-bugs
         all-stories

         (all-from-out "./badge-story/main.rkt")
         (all-from-out "./class-intro/main.rkt")
         (all-from-out "./coa-fables/main.rkt")
         (all-from-out "./game-jam/main.rkt")
         )

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt"
         "./badge-story/main.rkt"
         "./class-intro/main.rkt"
         "./coa-fables/main.rkt"
         "./game-jam/main.rkt")

;==== CLASS FRAME STORIES ==================




(define (coach-story)
  (with-tags (list fable)
    (story-mode "Coach Story" 5
                "A chance to introduce yourself and some values of MetaCoders."
                (story-text 
                  (coach-fills-in "Your coach story")
                  (br)
                  (br)
                  (coach-fills-in "Any discussion questions you wish to ask about your story")))))


;======== META STORIES/REFLECTIONS =========

(define (meta-story-one-word)
  (with-tags (list reflection)
    (story-mode "Meta Story: One Word" 5
                "A speedy mini-reflection where each student sums up their experience in one word."
                (story-text "Each student shares one word about their experience in class that day..."))))

(define (meta-story-reflect (topic "what the team did and learned today."))
  (with-tags (list reflection)
    (story-mode "Meta Story: Reflection" 5
                "A chance to practice those metacognition skills."
                @story-text{@~a{Briefly reflect on @topic ...}})))

(define (meta-story-deep-reflect (topic "what the team did and learned today."))
  (with-tags (list reflection)
    (story-mode "Meta Story: Deep Reflection" 10
                "A deeper dive into the subjects, challenges, and skill-building that happened in today's class."
                @story-text{Reflect on @topic, giving the time and guidance for deeper, more meaningful reflection.})))

;TODO: functionalize this to add what to say about next week?
(define (meta-story-next-time)
  (with-tags (list meta-classroom)
    (story-mode "Meta Story: Next Time..." 3
                "A chance to remind students of something for upcoming classes."
                @story-text{Coach reminds students of something to do/bring/remember about next class...})))

(define (meta-story-badges)
  (with-tags (list meta-classroom)
    (story-mode "Meta Story: Badges" 5
                "Badge ceremony!"
                @story-text{Coach awards badges to students who have earned it and reminds others when they will earn theirs...})))

;===== HISTORY STORIES ===

(define (hello-world-story)
  (with-tags (list historical cultural)
    (story-mode "Hello World Story" 5
                "About the phrase 'Hello World' in the computer science context"
                (story-text "Tell the story of 'Hello World' and why it is the name of the first kata."))))

(define (first-bug-story)
  (with-tags (list historical)
    (story-mode "The First Computer Bug..." 5
                "The story of the moth in Mark II"
                @story-text{Story of moth in Mark II -- not Grace Hopper, not the first use of bug in engineering, but still a cool part of computer history.}
                ;see https://en.wikipedia.org/wiki/Software_bug#History
                )))

(define (y2k-bug-story)
  (with-tags (list historical)
    (story-mode "The Y2K Bug" 5
                "Story of the most famous bug that never was -- Y2K"
                @story-text{We start in the ancient times -- 1999...})))

;===== METACOGNATIVE STORIES =====


(define (rethinking-bugs)
  (with-tags (list debugging)
    (story-mode "Where the Bug Lives..." 15
                "What really causes bugs -- the computer or our OWN BRAIN."
                @story-text{Story and discussion about bugs and where they come from -- not the computers, but our own thinking and understanding (or lack thereof) of the code.})))




(define (all-stories)
  (sort
    (remove-duplicates
      (flatten
        (list
         ;class frame stories
         (coach-story)
         (class-intro)
         (coa-stories)
         (bug-hunter-fable)
         (overcome-the-unknown-fable)
         (energize-the-team-fable)
         (intro-jam)
         (coa-focus)
         (badge-stories)
         ;meta stories
         (meta-story-one-word)
         (meta-story-reflect)
         (meta-story-deep-reflect)
         (meta-story-next-time)
         (meta-story-badges)
         ;history
         (hello-world-story)
         (first-bug-story)
         (y2k-bug-story)
         ;metacognitive stories
         (rethinking-bugs))))
     string<?
     #:key story-mode-name ))

(module+ test
  (require rackunit)

  (all-stories))

