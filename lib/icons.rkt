#lang at-exp racket

(provide
 game-icon
 story-icon)

(require website)

(define (game-icon)
  (i class: "fas fa-dice"))
;other options: fa-chess-knight, fa-pawn, fa-trophy

(define (story-icon)
  (i class: "fas fa-book"))
;other options: fa-scroll, fa-book-open

