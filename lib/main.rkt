#lang at-exp racket

(provide
  (all-from-out "./base.rkt")
  (all-from-out "./rendering.rkt"))

(require website/bootstrap
         "./base.rkt"
         "./rendering.rkt")


;MOVE TO lib/game-modes

(provide coa-mottos all-games)

(define (coa-mottos)
  (game-mode "Code of Awesomeness Mottos" 10
    (div
      (p "Have them come up with mottos for the following ...")
      (ipsum 50))))


(define (all-games)
  (list
    (coa-mottos)))

;END 

;MOVE TO lib/story-modes

(provide coa-stories coach-story all-stories)

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
    (coa-stories)
    ))

;END 

;MOVE TO lib/classmaps

(provide all-classmaps 
         class-launch-map
         day-2-map
         day-3-map
         day-4-map
         day-5-map
         day-6-map
         day-7-map
         day-8-map)

(define (class-launch-map)
  (classmap "Class Launch Map"
    (list (coach-story)
          (coa-stories)
          (coa-mottos)))) 

(define (class-launch-map-v2)
  (classmap "Class Launch Map (v2)"
    (list (coach-story)
          (coa-stories)
          (coa-mottos)))) 

(define (day-2-map)
  (classmap "Day 2 Map"
    (list (coach-story)
          (coa-stories)
          (coa-mottos)))) 
(define (day-3-map)
  (classmap "Day 3 Map"
    (list (coach-story)
          (coa-stories)
          (coa-mottos)))) 
(define (day-4-map)
  (classmap "Day 4 Map"
    (list (coach-story)
          (coa-stories)
          (coa-mottos)))) 
(define (day-5-map)
  (classmap "Day 5 Map"
    (list (coach-story)
          (coa-stories)
          (coa-mottos)))) 
(define (day-6-map)
  (classmap "Day 6 Map"
    (list (coach-story)
          (coa-stories)
          (coa-mottos)))) 
(define (day-7-map)
  (classmap "Day 7 Map"
    (list (coach-story)
          (coa-stories)
          (coa-mottos)))) 
(define (day-8-map)
  (classmap "Day 8 Map"
    (list (coach-story)
          (coa-stories)
          (coa-mottos)))) 

(define (all-classmaps)
  (list (class-launch-map)
        (class-launch-map-v2)))

