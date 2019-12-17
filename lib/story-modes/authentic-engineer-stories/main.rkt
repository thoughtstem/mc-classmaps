#lang at-exp racket

(provide boids-story)

(require 
 website-js
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering
 
 website-js/components/boids)



(define (boid-maker)
 (enclose
  (div
   (button-primary 
     on-click: (call 'showBoids)
     "Show me some boids!")
   (span id: (id 'boidTarget))
   (template id: (id 'boids)
    (boids class: "p-5 card bg-transparent"
     style: (properties 'overflow: "hidden"
       height: 300))))
   (script ([boidTarget (id 'boidTarget)]
            [boids (id 'boids)])
     (function (showBoids)
       @js{@getEl{@boidTarget}.innerHTML = ""}
       (inject-component
         @boids
         @boidTarget)))))

(define (boids-story)
  (with-tags (list debugging software-engineering true-story)
      (story-mode "How to capture a Boid" 5
                  "Jason captures several Boids and puts them on a website"
                  @story-text{
                    @(include-p5-js) 

                    @(boid-maker)
                  })))
