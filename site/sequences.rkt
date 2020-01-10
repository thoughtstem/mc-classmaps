#lang at-exp racket

(provide sequences-tab-pane)

(require website/bootstrap
         mc-classmaps/lib)

(define (sequences-tab-pane (pane tab-pane))
 (pane id: "sequences" class: "p-3" 
  (h3 "Sequences")
  (map sequence->html (all-sequences))))

