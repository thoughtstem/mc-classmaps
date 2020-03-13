#lang at-exp racket

(require website/bootstrap
         "../base.rkt"
         "../rendering.rkt"
         "../game-modes/main.rkt"
         "../story-modes/main.rkt"
         "./academic/main.rkt"
         "../tags.rkt")

(provide all-classmaps
         class-launch-map
         coa-focus-map
         first-badge-map
         bugs-map
         final-jam-map
         coa:bug-hunter-map
         coa:team-map
         partner-practice-map
         rubys-class-launch-map
         (all-from-out "./academic/main.rkt"))

;classmap struct: add desc or tips


(define (class-launch-map)
  (classmap "Class Launch Map"
            "Start your session with introductions, the first Code of Awesomeness, and writing the Hello World code!"
    (list (coach-story) ;5
          (name-memory-game) ;5
          (class-intro) ;5
          (story-with-minutes 15 (overcome-the-unknown-fable)) ;15 -- 30
          (coa-mottos-creation) ;10 --- 40
          (hello-world-story) ;5  
          (hello-world-beginner-game) ;10 -- 55
          (meta-story-reflect "One UNKNOWN we OVERCAME today")))) ; 5

(define (coa:bug-hunter-map)
  (classmap "Be a Bug Hunter Map"
            "Add a new Code to your Team's Code of Awesomeness!"
            (list (starting-review "the Code(s) in our Code of Awesomeness so far") ;5
                  (story-with-minutes 15 (bug-hunter-fable)) ;15
                  (coa-mottos-creation) ;10 -- 30
                  (game-with-minutes 20 (code-anatomy)) ;20
                  (meta-story-deep-reflect) ;10 -- 60
                  )))

(define (first-badge-map)
  (classmap "First Badges Awarded Map"
            "Award the first badge(s) of the session!"
    (list (badge-day-intro) ;5
          (game-with-minutes 20 (disintegrating-code)) ;20 -- 25
          (game-with-minutes 15 (add-pair-programming (try-it-first))) ;15 -- 40
          (game-with-minutes 10 (market-time)) ;10 -- 50
          (story-with-minutes 10 (meta-story-badges))))) ;10 -- 60

(define (coa:team-map)
  (classmap "Teach the Team Map"
            "Add a new Code to your Team's Code of Awesomeness!"
            (list (starting-review "the Code(s) in our Code of Awesomeness so far") ;5
                  (story-with-minutes 15 (teach-the-team-fable)) ;15
                  (coa-mottos-creation) ;10 -- 30
                  (game-with-minutes 25 (add-pair-programming (create-a-challenge))) ;25 -- 55
                  (meta-story-one-word) ;5 -- 60
                  )))

;add tip: feel free to change around the amount of time of the game modes, 
(define (coa-focus-map)
  (classmap "Code of Awesomeness Focus Map"
            "Re-enforce a specific Code, put it into practice, and grow student metacognition skills through reflection!"
    (list (coa-focus)
          (game-with-minutes 25 (code-anatomy))
          (meta-story-reflect "the Code you chose to focus on")
          (game-with-minutes 15 (disintegrating-code))
          (meta-story-deep-reflect "the Code you chose to focus on")
          )))



;What bugs are, and how we think about them.  
(define (bugs-map)
  (classmap "All About Bugs"
            "Get to know BUGS and a different way of thinking about them."
    (list ;cutting some things, trying a less is more approach
     ;(first-bug-story)
     (mars-orbiter-bug-story) ; 10
     (game-with-minutes 25 (build-a-bug-workshop)) ;25
     (rethinking-bugs) ;15
     (meta-story-deep-reflect "what we learned about bugs today")))) ;10

(define (partner-practice-map)
  (classmap "Partner Practice"
            "Prepare for the Final Jam by reviewing code and practicing pair programming."
            (list (starting-review "Final Jam") ;5
                  (game-with-minutes 20 (add-pair-programming (reverse-translation))) ;20 -- 25
                  (story-with-minutes 10
                   (meta-story-reflect "coding with a partner: what's challenging? What's easier?")) ;10 -- 35
                  (game-with-minutes 20 (add-pair-programming (building-up))) ;20 -- 55
                  (meta-story-one-word) ;5 -- 60
                  ))) 


(define (final-jam-map)
  (classmap "Final Jam Map"
            "Celebrate student progress by showcasing everything they have learned. Have an AWESOME last class!"
    (list (lock-story-mode (intro-jam))
          (game-with-minutes 25 (final-jam))
          (lock-game-mode (scoring-jam))
          (lock-game-mode (market-time))
          (lock-story-mode (meta-story-badges)))))


;==== sample map for training ===

(define (rubys-class-launch-map)
  (classmap "Ruby's Awesome Class Launch Map (v3)"
            "A variation on the Class Launch Map by Coach Ruby"
    (list (coach-story) ;5
          (compass-name-game) ;5
          (class-intro) ;5
          (story-with-minutes 15 (coa-stories)) ;15 -- 30
          (coa-mottos-creation) ;10 --- 40
          (hello-world-story) ;5  
          (hello-world-beginner-game) ;10 -- 55
          (meta-story-reflect "One UNKNOWN we OVERCAME today")))) ; 5

;====== TESTING (replace-last-map) ===== remove me

#;(define (testmap-same-length)
  (replace-last-mode (rubys-class-launch-map) (story-stub "New Story" 1 " I should be 5 minutes, not 1")))

#;(define (testmap-new-length)
  (replace-last-mode (rubys-class-launch-map) (story-stub "New Story" 1 " I should be 1 minute, not 5")
                     #:keep-map-length? #f))



;===========================

;Classmaps to create:
; Class Launch Intermediate with whole-class brainstorm and code anatomy
; Class Launch: Large Class with breakout brainstorm and disitegrating code
; Final Jam With Review
; All Unplugged
; Developer Role Play

;not the source of truth for sequences
(define (8-week-starter-pack)
 (list (class-launch-map)
       (coa:bug-hunter-map)
       (first-badge-map)
       (coa:team-map)
       (bugs-map)
       (coa-focus-map)
       (partner-practice-map)
       (final-jam-map)))

(define (all-classmaps)
 (flatten
  (list
   (8-week-starter-pack)
   (computational-thinking-wip-pack)
   (computational-thinking-for-young-elementary-pack)
   (computational-thinking-for-upper-elementary-pack)
   (rubys-class-launch-map)
   )))

(module+ test
  (require rackunit)

  (all-classmaps)
  (rubys-class-launch-map))
