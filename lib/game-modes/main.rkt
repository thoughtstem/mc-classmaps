#lang at-exp racket

(provide coa-mottos-creation
         disintegrating-code
         hello-world-beginner-game
         name-memory-game
         final-jam
         scoring-jam
         market-time
         code-anatomy
         whaddya-call-that
         whaddya-call-that-partners
         find-the-portkey
         reverse-engineering
         code-carousel
         building-up
         code-relay
         code-olympics
         create-a-challenge
         reverse-translation
         mind-meld
         build-a-bug-workshop
         code-connect-four
         add-pair-programming
         example-game
         name-and-motion
         name-alliteration)
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
         "./pattern-games/main.rkt"
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
