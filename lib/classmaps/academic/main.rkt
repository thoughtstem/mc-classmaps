#lang at-exp racket

;A place to define more "academic" classmaps and classmap sequences.
;Good for use in in-school programs and more academically-focused after-school programs

(require website-js
         website-js/components/accordion-cards
         "../../base.rkt"
         "../../rendering.rkt"
         "../../game-modes/main.rkt"
         "../../story-modes/main.rkt"
         "../../tags/main.rkt"
         (except-in 2htdp/image frame))

(provide inputs/outputs:depth-1
         bugs:depth-1
         bugs:depth-1:plugged
         metacognition:depth-1
         skills:depth-1
         skills:depth-2
         skills:depth-3
         inputs/outputs:depth-2
         inputs/outputs:depth-2:plugged
         bugs:depth-2
         language:depth-2
         language:depth-2:plugged
         inputs/outputs:intermediate
         bugs:intermediate
         language:intermediate
  computational-thinking-for-young-elementary-pack
  computational-thinking-wip-pack
  computational-thinking-for-upper-elementary-pack)


;kinder classmap model
;CLASS IS 30 MIN

;----------------------
;| 5 min intro S
;----------------------
; 5 min unplugged G   |
;----------------------
;| 5 min topic S
;----------------------
;                     |
; 10 min plugged G    |
;----------------------
;| 5 min reflection S


;young elem classmap model
;CLASS IS 40 MIN

;----------------------
;| 5 min intro S
;----------------------
;                     |
; 10 min unplugged G  |
;----------------------
;|
;| 10 min topic S
;----------------------
;                     |
; 10 min plugged G    |
;----------------------
;| 5 min reflection S


;==== Depth 1 =====

(define (inputs/outputs:depth-1 #:intro (intro (story-stub "Day Intro" 5 "What are we doing today?")))
  (classmap "Intro to Inputs/Outputs"
            "An unplugged/plugged classmap introducing the basics of inputs/outputs."
            (list
              intro
              
              (game-with-minutes  10 (person-bot)) 

              (story-with-minutes 10 (human-input-output-story))

              (game-with-minutes  10 (what-does-this-do)) 

              (meta-story-one-word)
              )))


(define (bugs:depth-1 #:intro intro)
  (classmap "Intro to Bugs"
            "A unplugged/plugged classmap introducing the basics of bugs."
            (list
              intro
              (game-with-minutes 10 (preface-game
                                     (tips (list "Give bots an " (b "error code")
                                                   " -- specific phrase or motion when they have a bug")
                                               (list "Increase " (b "difficulty")
                                                   " -- (reccomended for younger groups) use 1 Player as the bot instead of the Coach/all Players, add a language restriction, etc.")
                                               (list "Change the " (b "goal")
                                                   " -- draw a house, put on a sweatshirt, complete a math problem, fold a paper airplane, etc.")
                                               (list "Have the Bot Coders " (b "write")
                                                   " all the instructions down at once before Bot begins to execute -- (reccomended for older groups) this can be done with multiple teams, and with multiple testing cycles."))
                                     (person-bot))) 

              (story-with-minutes 10
                                  (debugging-a-pizza
                                   #:intro "This is a story about a pizza mystery.  If you've heard it before, don't spoil the ending!"))

              (game-with-minutes 10 (disintegrating-code))
              (meta-story-reflect)))) 

;changed from language and code as language map
(define (metacognition:depth-1 #:intro intro)
  (classmap "Intro to Thinking Code"
            "A unplugged/plugged classmap introducing the basics of learning how to code."
            (list
              intro
              (preface-game (p "You will play this game again in the More on Inputs and Outputs map, so keep that in mind when how much time you spend on each level.") 
                            (chain-reaction))
              (story-with-minutes 10 (a-path-in-your-brain-story))
              (game-with-minutes  10 (disintegrating-code))
              (meta-story-one-word))))


(define (skills:depth-1 #:intro intro)
  (classmap "Intro to Coder Skills"
            "It takes more than just computer knowledge to be a coder; take a look all the different skills it takes to be the best coder in this map."
            (list
              intro
              (game-with-minutes 10 (chain-reaction))
              (story-with-minutes 10 (coder-skills-story:just-ch1))
              (game-with-minutes 10 (build-a-bug-workshop))
              (meta-story-reflect)
             )))

(define (skills:depth-2 #:intro intro)
  (classmap "More on Coder Skills"
            "Continuing the discovery of the whole collection of skills it takes to be a coder."
            (list
              intro
              (game-with-minutes 10 (chain-reaction))
              (story-with-minutes 10 (coder-skills-story:just-ch2))
              (game-with-minutes 10 (create-a-challenge))
              (meta-story-one-word)
             )))

(define (skills:depth-3 #:intro intro)
  (classmap "Coder Skills: The Final Chapter"
            "Focusing on the most challenging part of being a coder -- coding your own brain."
            (list
              intro
              (game-with-minutes 10 (chain-reaction))
              (story-with-minutes 10 (coder-skills-story:just-ch3))
              (game-with-minutes 10 (try-it-first))
              (meta-story-reflect)
             )))

;==== MODIFIED Depth 1, more coding game modes ====

;unedited
(define (bugs:depth-1:plugged #:intro intro)
  (classmap "Intro to Bugs: on-computer games only"
            "A classmap introducing the basics of bugs, with all on-computer game modes."
            (list
              intro
              (game-with-minutes 20 (disintegrating-code))

              (debugging-a-pizza
                #:intro "Does everyone remember the pizza debugging story?  We're going to go over it again, but this time we're going to focus on some details that people always miss the first time.")
              

              (game-with-minutes 15 (build-a-bug-workshop))
              (meta-story-reflect))))


;==== Depth 2 inputs/outputs, bugs, language =====
            
(define (inputs/outputs:depth-2 #:intro (intro (story-stub "Day Intro" 5 "What are we doing today?")))
  (classmap "More On Inputs and Outputs"
            "A unplugged/plugged classmap on inputs/outputs."
            (list
              intro
              (preface-game (p "Review the levels you got to last time you played this game or just jump right into the next level")
                            (chain-reaction))
              (story-with-minutes 10 (intro-to-systems-story))
              (game-with-minutes 10 (try-it-first))
              (meta-story-one-word))))

;unedited map
(define (bugs:depth-2 #:intro intro)
  (classmap "More On Bugs"
            "A unplugged/plugged classmap on debugging skills."
            (list
              intro
              (game-with-minutes 10 (person-bot:point))
              (story-with-minutes 10 (bug-hunter-fable))
              (game-with-minutes 10 (build-a-bug-workshop))
              (meta-story-reflect)
             )))
            
(define (language:depth-2 #:intro intro)
  (classmap "More on to Code is Language"
            "A unplugged/plugged classmap on coding as a language."
            (list
              intro
              (game-with-minutes 10 (person-bot:point))
              (story-stub "Tell a Story with Words Changed" 10
                "Jimmy went on a *Bloop* Hunt")
             (game-with-minutes 10 (disintegrating-code))
              (meta-story-one-word))))



;==== MODIFIED Depth 2: more coding game modes ====

(define (inputs/outputs:depth-2:plugged #:intro (intro (story-stub "Day Intro" 5 "What are we doing today?")))
  (classmap "More On Inputs and Outputs: on-computer games only"
            "A classmap on inputs/outputs, with all on-computer game modes."
            (list
              intro
              (game-with-minutes 20 (disintegrating-code))
              (story-stub "The World Through Inputs and Outputs" 15
                "Cats/animals"
                "Houses"
                "Bottle/Cup"
                "Fridge"
                "Your Room")
              (game-with-minutes 15 (try-it-first))
              (meta-story-one-word))))

(define (language:depth-2:plugged #:intro intro)
  (classmap "More on to Code is Language: on-computer games only"
            "A classmap on coding as a language, with all on-computer game modes."
            (list
              intro
              (game-with-minutes 20 (try-it-first))
              (story-stub "Tell a Story with Words Changed" 15
                "Jimmy went on a *Bloop* Hunt")
             (game-with-minutes 15 (disintegrating-code))
              (meta-story-one-word))))

;==== Depth 1/2 Combo: inputs/outputs, bugs, language =====


;upper elem classmap model

;----------------------
;| 5 min intro S
;----------------------
; 10 min comp warmup G |
;                      |
;----------------------
;|
;| 15 min topic S
;|
;----------------------
;                      |
;                      |
; 25 min G (or split)  |
;                      |
;                      |
;----------------------
;| 5 min reflection S


(define (inputs/outputs:intermediate #:intro (intro (story-stub "Day Intro" 5 "What are we doing today?"))
                                 #:review? (review? #t))
  (define (with-review-time)
    (list
     intro
     (game-with-minutes 10 (open-code-review)) 
     (story-stub "The World Through Inputs and Outputs" 15
                 "Talk about 5 senses (input), and speaking/signing/writing/coding (outputs)"
                "Then expand that idea into: Cats/animals"
                "Houses"
                "Bottle/Cup"
                "Fridge"
                "Your Room")

     (game-with-minutes 15 (person-bot)) 
     (game-with-minutes 10 (what-does-this-do))
     (meta-story-one-word)))

  (define (wo-review-time)
    (list
     intro
     (story-stub "The World Through Inputs and Outputs" 15
                 "Talk about 5 senses (input), and speaking/signing/writing/coding (outputs)"
                "Then expand that idea into: Cats/animals"
                "Houses"
                "Bottle/Cup"
                "Fridge"
                "Your Room")
     (game-with-minutes 15 (person-bot)) 
     (game-with-minutes 20 (what-does-this-do))
     (meta-story-one-word)))

  (define (map-modes)
    (if review?
        (with-review-time)
        (wo-review-time)))
  
  (classmap "Intro to Inputs/Outputs: Intermediate"
            "A classmap covering depth 1 and 2 on inputs/outputs."
            (map-modes)
            ))

(define (bugs:intermediate #:intro intro)
  (classmap "Intro to Bugs: Intermediate"
            "A classmap covering depth 1 and 2 on bugs."
            (list
              intro
              (game-with-minutes 10 (open-code-review))
              (story-with-minutes 15 (bug-hunter-fable))
              (game-with-minutes 15 (disintegrating-code))
              (game-with-minutes 10 (build-a-bug-workshop))
              (meta-story-reflect))))

(define (language:intermediate #:intro intro)
  (classmap "Intro to Code is Language: Intermediate"
            "A classmap introducing dept 1 and 2 of coding as a language."
            (list
              intro
              (game-with-minutes 10 (open-code-review))
              (story-stub "Coach tells story and leads discussion about language" 15
                "Coding is a language to communicate with computers.")
              (game-with-minutes 15 (person-bot:shapes-and-size))
              (game-with-minutes 10 (try-it-first))
              (meta-story-one-word))))





;==== Maps in Progress ====

;unedited potential map
(define (inputs/outputs:depth-3 #:intro (intro (story-stub "Day Intro" 5 "What are we doing today?")))
  (classmap "Even More On Inputs and Outputs"
            ""
            (list
              intro
              (game-stub "Code the Kid (with language [new input output])" 15
                "")
              (story-stub "The World Through Inputs and Outputs, Again -- But with specifics..." 15
                "Tell story about a farm.  Farmer buys Cows, sells milk, buys cow food, cleans up cow poop, ...."
                "What I/O systems can we identify from that story... "
                )

              (game-stub "Basic Coding Game" 15
                "???")

              (meta-story-one-word)
              )))


;unedited potential map
(define (bugs:depth-3 #:intro intro)
  (classmap "Even More On Bugs"
            ""
            (list
              intro
              (game-stub "Code the Kid" 15
                "???")

              (bug-hunter-fable)

              (game-stub "Basic Coding Game" 15
                "???")
              (meta-story-reflect)
             )))
;unedited potential map            
(define (language:depth-3 #:intro intro)
  (classmap "Even More on to Code is Language"
            ""
            (list
              intro
              (game-stub "Code the Kid (with language)" 15
                "???")
              (story-stub "Tell a Story with Words Changed" 15
                "Jimmy went on a *Bloop* Hunt")
              (game-stub "Basic Coding Game" 15
                "???")
              (meta-story-one-word))))



; ====== MAP PACKS ========

(define (computational-thinking-wip-pack)
  (list 
    (inputs/outputs:depth-1 
      #:intro (coach-story)) 

    (bugs:depth-1
      #:intro (story-stub "Review" 5 "What did we do last time?")) 
   
    (metacognition:depth-1
      #:intro (story-stub "Review" 5 "What did we do last time?")) 

    (inputs/outputs:depth-2
      #:intro (story-stub "Review" 5 "What do you remember about Inputs and Outputs?")) 

    (skills:depth-1
      #:intro (story-stub "Review" 5 "What skills have we learned in this class so far?"))

    (skills:depth-2
      #:intro (story-stub "Review" 5 "What did we learn about coder skills last time?"))

    (skills:depth-3
      #:intro (story-stub "Review" 5 "What did we learn about coder skills last time?"))
    #|
    (inputs/outputs:depth-3) 
    (bugs:depth-3)
    (language:depth-3)
    (metacognition:depth-1) 
    |#

  ))

;this set of classmaps takes the kinder pack, and varies every other week to involve more computer time
(define (computational-thinking-for-young-elementary-pack)
  (list
   ;unplugged/plugged games
   (inputs/outputs:depth-1 
      #:intro (coach-story))
   ;all plugged games
   (bugs:depth-1:plugged
      #:intro (story-stub "Review" 5 "What did we do last time?"))
   ;unplugged/plugged
   (metacognition:depth-1
      #:intro (story-stub "Review" 5 "What did we do last time?"))
   ;all plugged
   (inputs/outputs:depth-2:plugged
      #:intro (story-stub "Review" 5 "What do you remember about Inputs and Outputs?"))
   ;unplugged/plugged
   (bugs:depth-2
      #:intro (story-stub "Review" 5 "What do you remember about Bugs?")) 
   ;all-plugged
   (language:depth-2:plugged
      #:intro (story-stub "Review" 5 "What do you remember about Coding as a Language?"))
    ))

(define (computational-thinking-for-upper-elementary-pack)
  (list
   
   (inputs/outputs:intermediate
    #:intro (coach-story)
    #:review? #f)

   (bugs:intermediate
    #:intro (story-stub "Review" 5 "What did we do last time?"))

   (language:intermediate
    #:intro (story-stub "Review" 5 "What did we do last time?"))
   
  ))

(module+ test
  (require rackunit)

  (computational-thinking-wip-pack))

