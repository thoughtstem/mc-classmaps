#lang at-exp racket

(provide all-games
         (all-from-out "./coding-games.rkt")
         (all-from-out "./name-games.rkt")
         (all-from-out "./class-mechanics-games.rkt")
         (all-from-out "./language-games.rkt")
         (all-from-out "./game-frames.rkt")
         (all-from-out "./unplugged-games.rkt"))

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt"
         "./coding-games.rkt"
         "./name-games.rkt"
         "./class-mechanics-games.rkt"
         "./language-games.rkt"
         "./game-frames.rkt"
         "./unplugged-games.rkt")

;Language standardization:
; use TEAM instead of CLASS
; use Player instead of STUDENT



(define (all-games)
  (sort
   (remove-duplicates
    (flatten
     (list
      (name-games)
      (coding-games)
      (class-mechanics-games)
      (language-games)
      (unplugged-games)
      (game-frames)
      )))
   string<?
   #:key game-mode-name))


(module+ test
  (require rackunit)

  (all-games))
