#lang at-exp racket

(provide 
 (rename-out [make-game-mode game-mode])
 (except-out (struct-out game-mode) game-mode)
 (rename-out [make-story-mode story-mode])
 (except-out (struct-out story-mode) story-mode)
 (struct-out classmap)
 classmap-minutes
 mode-minutes
 game-with-minutes
 story-with-minutes
 lock-story-mode
 lock-game-mode
 story-text)

(require website/bootstrap
         website/util)

;TODO
;update all story-modes to reflect changes
;update game-mode struct
;update game-mode constructor
;update all game-modes...
;update classmaps struc
;create classmap constructor?
;update all classmaps...

(struct game-mode  (name minutes data lock-length?))
(struct story-mode (name minutes summary data lock-length?))
(struct classmap   (name modes))

(define (mode-minutes m)
  (if (story-mode? m)
    (story-mode-minutes m)
    (game-mode-minutes m)))

(define (classmap-minutes cm)
  (apply + (map mode-minutes (classmap-modes cm))))

;constructors

(define (make-game-mode n m d [l #f])
  (game-mode n m d l))

(define/contract (make-story-mode name minutes summary data)
  (-> string? number? string? element? story-mode?)
  (story-mode name minutes summary data #f))

;classmap helper functions

(define (game-with-minutes min mode)
  (struct-copy game-mode mode
               [minutes min]))

(define (story-with-minutes min mode)
  (struct-copy story-mode mode
               [minutes min]))

(define (lock-story-mode mode)
  (struct-copy story-mode mode
               [lock-length? #t]))

(define (lock-game-mode mode)
  (struct-copy game-mode mode
               [lock-length? #t]))

;multi-use functions


;functions for creating games and stories

(define (story-text . content)
  (define (maybe-p-ify x)
    (if (string? x)
        (p x)
        x))
  (div (map maybe-p-ify content)))

;TESTS

(module+ test
  (require rackunit)

  (define test-story
    (make-story-mode "Test Story" 1 "summary"
                     (story-text "blah")))

  ;=== STORY MODE STUFF

  ;story-text function
  (check-elements-equal?
   (story-text "Once upon a time there was a test."
                                "It passed."
                                "The villagers rejoiced!"
                                "The end.")
   (div
    (p "Once upon a time there was a test.")
    (p "It passed.")
    (p "The villagers rejoiced!")
    (p "The end.")))

  (check-elements-equal?
   (story-text "Here is another story"
               (p "this should not be double wrapped"))
   (div
    (p "Here is another story")
    (p "this should not be double wrapped")))

  (check-elements-equal?
   (story-text (p "this should not be double wrapped")
               "this should come last")
   (div
    (p "this should not be double wrapped")
    (p "this should come last")
    ))
  )
  


