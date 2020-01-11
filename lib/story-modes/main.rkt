#lang at-exp racket

(provide coa-stories
         class-intro
         bug-hunter-fable
         overcome-the-unknown-fable
         energize-the-team-fable
         coach-story
         intro-jam
         coa-focus
         all-stories

         (all-from-out "./authentic-engineer-stories/main.rkt")
         (all-from-out "./young-engineer-stories/main.rkt")
         (all-from-out "./badge-story/main.rkt")
         (all-from-out "./class-intro/main.rkt")
         (all-from-out "./coa-fables/main.rkt")
         (all-from-out "./game-jam/main.rkt")
         (all-from-out "./reflection-stories/main.rkt")
         (all-from-out "./historical-stories/main.rkt")
         (all-from-out "./metacognitive-stories/main.rkt")
         (all-from-out "./code-concept-stories/main.rkt"))

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt"
         "./young-engineer-stories/main.rkt"
         "./authentic-engineer-stories/main.rkt"
         "./badge-story/main.rkt"
         "./class-intro/main.rkt"
         "./coa-fables/main.rkt"
         "./game-jam/main.rkt"
         "./reflection-stories/main.rkt"
         "./historical-stories/main.rkt"
         "./metacognitive-stories/main.rkt"
         "./code-concept-stories/main.rkt")

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
         (starting-review)
         ;history
         (hello-world-story)
         (first-bug-story)
         (mars-orbiter-bug-story)
         ;metacognitive stories
         (rethinking-bugs)
         (boids-story)
         (youtube-story)
         ;code concept stories
         (human-input-output-story))))
     string<?
     #:key story-mode-name ))

(module+ test
  (require rackunit)

  (all-stories))

