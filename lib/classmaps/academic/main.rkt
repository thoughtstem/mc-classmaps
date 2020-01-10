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

(provide 
  computational-thinking-for-young-elementary-pack
  computational-thinking-for-kinder-pack
  computational-thinking-for-upper-elementary-pack)

(define (story-stub title time . notes)
  (story-mode title time "" 
    @div{
      @notes
    }))

(define (game-stub title time . notes)
  (game-mode title time "" 
    @div{
      @notes
    }))


;all code-the-bot variations renamed "person-bot..." and moved to ../../game-modes/language-games.rkt
;pattern-recognition game renamed pattern-prediction and moved to ../../game-modes/unplugged-games.rkt


;kinder classmap model
;CLASS IS 40 MIN

;----------------------
;| 5 min intro S
;----------------------
;                     |
;                     |
; 20 min unplugged G  |
;                     |
;----------------------
;|
;| 15 min topic S
;|
;----------------------
;                     |
; 15 min plugged G    |
;                     |
;----------------------
;| 5 min reflection S


;young elem classmap model
;CLASS IS 50 MIN

;----------------------
;| 5 min intro S
;----------------------
;                     |
; 20 min alterating   |
;  unplugged/plugged G|
;                     |
;----------------------
;|
;| 15 min topic S
;|
;----------------------
;                     |
; 15 min plugged G    |
;                     |
;----------------------
;| 5 min reflection S


;==== Depth 1 inputs/outputs, bugs, language =====

(define (inputs/outputs:depth-1 #:intro (intro (story-stub "Day Intro" 5 "What are we doing today?")))
  (classmap "Intro to Inputs/Outputs"
            "An unplugged/plugged classmap introducing the basics of inputs/outputs."
            (list
              intro
              
              (game-with-minutes 20 (person-bot)) 

              (story-with-minutes 15 (human-input-output-story))

              (game-with-minutes 15 (what-does-this-do)) 

              (meta-story-one-word)
              )))


(define (bugs:depth-1 #:intro intro)
  (classmap "Intro to Bugs: unplugged/plugged games"
            "A unplugged/plugged classmap introducing the basics of bugs."
            (list
              intro
              (game-with-minutes 20 (add-game-focus "bugs"(person-bot))) 
              (story-stub "What is a bug??" 15
                "Introduce the concept of bugs...")
              (game-with-minutes 15 (disintegrating-code))
              (meta-story-reflect))))

(define (bugs:depth-1:plugged #:intro intro)
  (classmap "Intro to Bugs: on-computer games only"
            "A classmap introducing the basics of bugs, with all on-computer game modes."
            (list
              intro
              (game-with-minutes 20 (disintegrating-code))
              (story-stub "What is a bug??" 15
                "Introduce the concept of bugs...")
              (game-with-minutes 15 (build-a-bug-workshop))
              (meta-story-reflect))))

(define (language:depth-1 #:intro intro)
  (classmap "Intro to Code is Language"
            "A unplugged/plugged classmap introducing the basics of coding as a language."
            (list
              intro
              (game-with-minutes 20 (person-bot-language-focus))
              (story-stub "Coach tells story and leads discussion about language" 15
                "Coding is a language to communicate with computers.")
              (game-with-minutes 15 (disintegrating-code))
              (meta-story-one-word))))

;==== Depth 2 inputs/outputs, bugs, language =====
            
(define (inputs/outputs:depth-2 #:intro (intro (story-stub "Day Intro" 5 "What are we doing today?")))
  (classmap "More On Inputs and Outputs: unplugged/plugged games"
            "A unplugged/plugged classmap on inputs/outputs."
            (list
              intro
              (game-with-minutes 20 (person-bot:shapes-and-size))
              (story-stub "The World Through Inputs and Outputs" 15
                "Cats/animals"
                "Houses"
                "Bottle/Cup"
                "Fridge"
                "Your Room")
              (game-with-minutes 15 (try-it-first))
              (meta-story-one-word))))

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

(define (bugs:depth-2 #:intro intro)
  (classmap "More On Bugs"
            "A unplugged/plugged classmap on debugging skills."
            (list
              intro
              (game-with-minutes 20 (person-bot:point))
              (story-with-minutes 15 (bug-hunter-fable))
              (game-with-minutes 7 (create-a-challenge))
              (game-with-minutes 7 (build-a-bug-workshop))
              (meta-story-reflect)
             )))
            
(define (language:depth-2 #:intro intro)
  (classmap "More on to Code is Language: unplugged/plugged games"
            "A unplugged/plugged classmap on coding as a language."
            (list
              intro
              (game-with-minutes 20 (person-bot:point))
              (story-stub "Tell a Story with Words Changed" 15
                "Jimmy went on a *Bloop* Hunt")
             (game-with-minutes 15 (disintegrating-code))
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

(define (computational-thinking-for-kinder-pack)
  (list 
    (inputs/outputs:depth-1 
      #:intro (coach-story)) 

    (bugs:depth-1
      #:intro (story-stub "Review" 5 "What did we do last time?")) 
   
    (language:depth-1
      #:intro (story-stub "Review" 5 "What did we do last time?")) 

    (inputs/outputs:depth-2
      #:intro (story-stub "Review" 5 "What do you remember about Inputs and Outputs?")) 

    (bugs:depth-2
      #:intro (story-stub "Review" 5 "What do you remember about Bugs?")) 

    (language:depth-2
      #:intro (story-stub "Review" 5 "What do you remember about Coding as a Language?")) 
    


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
   (language:depth-1
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
