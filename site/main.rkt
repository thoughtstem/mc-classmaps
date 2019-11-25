#lang racket

(provide preview-classmaps)

(require website/bootstrap
         mc-classmaps/lib)

(define (index)
 (page index.html
  (content
   (container
    (classmaps->html
     all-classmaps)))))

(define (preview-classmaps)
  (list
    (index)
    (bootstrap-files)))
