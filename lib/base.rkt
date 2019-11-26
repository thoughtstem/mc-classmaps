#lang at-exp racket

(provide 
 (struct-out game-mode)
 (struct-out story-mode)
 (struct-out classmap)
 classmap-minutes
 mode-minutes)

(require website/bootstrap)

(struct game-mode  (name minutes data))
(struct story-mode (name minutes data))
(struct classmap   (name modes))

(define (mode-minutes m)
  (if (story-mode? m)
    (story-mode-minutes m)
    (game-mode-minutes m)))

(define (classmap-minutes cm)
  (apply + (map mode-minutes (classmap-modes cm))))

