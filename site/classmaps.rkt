#lang at-exp racket

(provide classmap-tab-pane)

(require website/bootstrap
         mc-classmaps/lib)

(define (classmaps-index-content)
 (map classmap->html (all-classmaps)))

(define (classmap-tab-pane (pane tab-pane))
 (pane id: "classmaps" class: "p-3" 
  (h3 "Classmaps")
  (classmaps-index-content)))

