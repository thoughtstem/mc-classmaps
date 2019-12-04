#lang racket

(provide (all-from-out mc-classmaps/site)
         (all-from-out mc-classmaps/lib))

(require website/bootstrap
         mc-classmaps/site
         mc-classmaps/lib)

(module+ main
 (render 
  (bootstrap (classmaps-index)) 
  #:to "out"))
