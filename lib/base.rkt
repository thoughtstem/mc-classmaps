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
 lock-game-mode)

(require website/bootstrap)

(struct game-mode  (name minutes data lock-length?))
(struct story-mode (name minutes data lock-length?))
(struct classmap   (name modes))

(define (mode-minutes m)
  (if (story-mode? m)
    (story-mode-minutes m)
    (game-mode-minutes m)))

(define (classmap-minutes cm)
  (apply + (map mode-minutes (classmap-modes cm))))

(define (make-game-mode n m d [l #f])
  (game-mode n m d l))

(define (make-story-mode n m d [l #f])
  (story-mode n m d l))

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

