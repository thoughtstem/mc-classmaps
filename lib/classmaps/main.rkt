#lang at-exp racket

(require website/bootstrap
         "../base.rkt"
         "../rendering.rkt"
         "../game-modes/main.rkt"
         "../story-modes/main.rkt")

(provide all-classmaps 
         class-launch-map
         day-2-map
         day-3-map
         day-4-map
         day-5-map
         day-6-map
         day-7-map
         day-8-map)

(define (game-with-minutes min mode)
  (struct-copy game-mode mode
                         [minutes min]))

(define (class-launch-map)
  (classmap "Class Launch Map"
    (list (coach-story)
          (coa-stories)
          (coa-mottos)
          (game-with-minutes 35 (hello-world-game))

          #;
          (struct-copy game-mode (hello-world-game)
                       [minutes 30])))) 

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
