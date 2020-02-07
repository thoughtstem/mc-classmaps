#lang at-exp racket

(provide all-story-frames 
 )

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering
 website-js/components/accordion-cards)


;add stories to this collection to be tested and shown on stories page
(define (all-story-frames)
  (list (preface-story (tips "Tell this story well."
                             "Don't be lame.")
                       (example-story))))

(module+ test
  (require rackunit)
  
  (all-story-frames))

;=======

(define (example-story)
  (story-mode "EXAMPLE STORY" 1
             "This story is a not a real story"
             (story-text "There's nother here to tell, honest.")))

(define (preface-story pre-stuff s #:new-title [story-title (story-mode-name s)])
  (story-mode story-title (story-mode-minutes s)
              (story-mode-summary s)
              (story-text
               pre-stuff
               (mode->content-card 
                #:fade? #f
                s))))



