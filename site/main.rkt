#lang racket

(provide preview-classmaps
         classmaps-index-content
         classmaps-index)

(require website/bootstrap
         mc-classmaps/lib)

(define (classmaps-index-content)
 (container
  (card
   (card-header 
     "Here are some maps")
   (card-body
   
    (classmaps->html
      all-classmaps)))))

(define (classmaps-index)
 (page index.html
  (content
    (classmaps-index-content))))

(define (preview-classmaps)
  (list
    (classmaps-index)
    (bootstrap-files)))
