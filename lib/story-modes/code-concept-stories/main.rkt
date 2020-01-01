#lang at-exp racket

(provide human-input-output-story)

(require 
 website/bootstrap
 website-js/components/accordion-cards
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)


(define (human-input-output-story)
  (with-tags
      (list k2 3rd-5th)
    (story-mode "Thinking about Inputs and Outputs" 5
                "Learn about inputs and outputs on a computer, then map them on to a human!"
                @story-text{
                            Outline
                            @ul[@li{Computers have inputs -- how they receive information -- and outputs -- how they give information.}
                                @li{With the help of students, list computers INPUTS:
                                  @ul[@li{keyboard}
                                      @li{mouse/trackpad}
                                      @li{camera}
                                      @li{microphone}
                                      @li{USB port}
                                      @li{...}]}
                                @li{With the help of students, list computer OUTPUTS:
                                  @ul[@li{screen}
                                      @li{speakers}
                                      @li{USB port}
                                      @li{...}]}
                                @li{What about HUMANS? What are our inputs -- ways to recieve information -- and outputs -- ways to give information?}
                                @li{With the help of students, list human INPUTS (the 5 senses):
                                  @ul[@li{eyes}
                                      @li{ears}
                                      @li{nose}
                                      @li{mouth}
                                      @li{skin}]}
                                @li{With the help of students, list human OUTPUTS:
                                  @ul[@li{voice}
                                      @li{fingers (pointing)}
                                      @li{hands (sign language)}
                                      @li{whole body (body language, dance)}
                                      @li{face (expression)}
                                      @li{writing}
                                      @li{drawing}
                                      @li{...}
                                      ]}]
 })))


(module+ test
  (require rackunit)

  (human-input-output-story))
