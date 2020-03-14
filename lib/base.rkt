#lang at-exp racket

(provide 
 (rename-out [make-game-mode game-mode])
 (except-out (struct-out game-mode) game-mode)
 (rename-out [make-story-mode story-mode])
 (except-out (struct-out story-mode) story-mode)
 (rename-out [make-classmap classmap])
 (except-out (struct-out classmap) classmap)
 (struct-out sequence)
 classmap-minutes
 mode-minutes
 game-with-minutes
 story-with-minutes
 mode-with-minutes
 
 lock-story-mode
 lock-game-mode
 story-text
 game-info
 supplies-list
 game-instructions
 steps
 (contract-out 
  [with-tags 
    (-> (listof tag?) (or/c story-mode? game-mode?) (or/c story-mode? game-mode?))])

 tips
 vocab
 mode-name
 mode-summary
 mode-tags
 mode-data
 mode-credit
 
 question-section
 embedded-story
 embedded-stories
 comprehension-questions
 creativity-questions
 coach-fills-in
 setup
 quotation
 
 story-stub
 game-stub

 maybe-add-punct
 gm-inline-pre
 coach-asks
 summary-and-goals
 replace-last-mode) 

(require website/bootstrap
         website/util
         website-js/components/accordion-cards
         "./tags/main.rkt"
         "./icons.rkt")


(struct game-mode  (name minutes summary data tags lock-length? credit))
(struct story-mode (name minutes summary data tags lock-length? credit))
(struct classmap   (name summary modes credit))
(struct sequence   (name summary classmaps))

(define (mode-name x)
  (if (game-mode? x)
    (game-mode-name x)
    (story-mode-name x)))

(define (mode-summary x)
  (if (game-mode? x)
    (game-mode-summary x)
    (story-mode-summary x)))

(define (mode-tags x)
  (if (game-mode? x)
    (game-mode-tags x)
    (story-mode-tags x)))

(define (mode-data x)
  (if (game-mode? x)
    (game-mode-data x)
    (story-mode-data x)))

(define (mode-credit x) (cond [(and (story-mode? x) (story-mode-credit x)) (story-mode-credit x)]
                              [(and (game-mode? x) (game-mode-credit x)) (game-mode-credit x)]
                              [else #f]))

;For now this just makes words bold.  In the future, we may want to collect vocabulary words from stories and do something more interesting with them.  Possibly make a struct later.
(define (vocab word)
  (b class: "vocab" word))

(define (with-tags ts s)
  (if (story-mode? s)
    (struct-copy story-mode s [tags ts])
    (struct-copy game-mode  s [tags ts])))

(define (mode-minutes m)
  (if (story-mode? m)
    (story-mode-minutes m)
    (game-mode-minutes m)))

(define (mode-with-minutes min mode)
  (if (story-mode? mode)
      (story-with-minutes min mode)
      (game-with-minutes min mode)))

(define (classmap-minutes cm)
  (apply + (map mode-minutes (classmap-modes cm))))

(define game-info? element?)
(define story-text? element?)


(define/contract (make-game-mode name minutes summary data (tags '()) #:credit (credit #f))
  (->* (string? number? string? game-info?)
       ((or/c empty? (listof string?)) #:credit (or/c string? #f element?))
       game-mode?)
  (game-mode name minutes summary data tags #f credit))

(define/contract (make-story-mode name minutes summary data (tags '()) #:credit (credit #f))
  (->* (string? number? string? story-text?)
       ((or/c empty? (listof string?)) #:credit (or/c string? #f element?))
       story-mode?)
  (story-mode name minutes summary data tags #f credit))

(define/contract (make-classmap name summary modes #:credit (credit #f))
  (->* (string? string? (listof (or/c story-mode? game-mode?)))
       (#:credit (or/c string? #f element?))
       classmap?)
  (classmap name summary modes credit))

;==== classmap helper functions =====

(define (game-with-minutes min mode)
  (struct-copy game-mode mode
               [minutes min]))

(define (story-with-minutes min mode)
  (struct-copy story-mode mode
               [minutes min]))

(define (lock-story-mode mode)
  (struct-copy story-mode mode
               [lock-length? #t]))

(define (lock-game-mode mode)
  (struct-copy game-mode mode
               [lock-length? #t]))

;helper helper functions

(define (only #:if conditional #:do f)
  (lambda (x)
    (if (conditional x)
        (f x)
        x)))

(define maybe-p-ify (only #:if string? #:do p))

;probably useful elsewhere -- pull out to some more general repo?
(define (maybe-add-punct str)
  (define (last-char s) (string-ref s (- (string-length s) 1)))
  (if (string? str)
      (if (char-punctuation? (last-char str))
          str
          (~a str "."))
      str))



;===== game and story mode helper functions ======

;replaced with para to allow formatting
#;(define (story-text . content)
  (div (map maybe-p-ify content)))

(define (story-text . content)
  (span (apply paras content)))

(define supplies-list? element?)
(define game-instructions? element?)

;potentially make supplies optional?
;or creat (no-supplies) func
(define/contract (game-info supplies instructions (tips-tricks #f) #:summary-goals [summary-goals #f])
  (->* (supplies-list? game-instructions?) (element? #:summary-goals element?) element?)
  (define maybe-summary-goals?
    (if summary-goals
        (list summary-goals
              (hr))
        #f))
  (div
   maybe-summary-goals?
   supplies
   (h5 "How to Play:")
   instructions
   tips-tricks))

;strings -> element (unordered list)
(define (supplies-list . stuff)
  (define list-content
    (if (empty? stuff)
        (ul
         (li "no required supplies"))
        (ul
         (map li stuff))))
  (div
   (h5 "Need:")
   list-content)
  )

;strings -> ol element
(define (steps . stuff)
  (ol
   (map li stuff)))


;strings, elements -> element
(define (game-instructions . content)
    (div
     (map maybe-p-ify content)))

;strings, elements -> ul element
(define (tips . t)
  (div
   (hr)
   (h5 "Tips & Tricks:")
   (ul
    (map li t))))

(define (summary-and-goals sum goals)
  (define goal-list
    (if (list? goals)
        goals
        (list goals)))
  (div
   (h5 "Mode Summary & Goals")
   (p (b "Summary:") " " sum)
   (b "Goals and Gains:")
   (ul
    (map li goal-list))
  ))

(require website-js/components/accordion-cards)
(define (question-section . content)
  (accordion-cards content))


(define (embedded-story story)
   (accordion-card #:header (list (story-icon) " " (story-mode-name story))
      (story-mode-data story)))

(define (embedded-stories . stories)
  (accordion-cards
    (map embedded-story (flatten stories))))

(define (li-qa s-or-list)
  (if (string? s-or-list)
    (li s-or-list)
    (li (p (first s-or-list))
        (p style: (properties color: "gray") (second s-or-list)))))

(define/contract (setup s)
  (-> string? element?)
  (p (i (b "Set Up: ") s)))

(define (comprehension-questions . content)
 (list
  (accordion-card
   #:header "Closed-Ended Questions"
    (card-text
     (ul
      (map li-qa content))))))

(define (creativity-questions . content)
 (list
  (accordion-card
    #:header "Open-Ended Questions"
    (card-text
      (ul
       (map li-qa content))))))

(define (coach-fills-in . content)
  (span (b "[Coach fills in: " (u content) "]")))

(define (quotation . content)
  (i content))

;for "code text" in a game mode
(define (gm-inline-pre t)
  (inline-pre #:light-text? #t t))

(define (coach-asks question #:example-answers (examples #f) #:right-answer (answer #f))
  (span (b "[Coach asks students: " (u question) "]")
        (if examples
            (list (br)
                  (i "Example answers: " (ul (map li examples))))
            #f)
        (if answer
            (list (br)
                  (i "Guide students to the answer: " (u answer)))
            #f)))

;==== Classmap helper functions ===


(define/contract (replace-last-mode
                  #:keep-map-length? (keep-map-length? #t)
                  cm
                  . new-modes)
  (->* (classmap?)
       (#:keep-map-length? boolean?)
       #:rest (or/c story-mode? game-mode? (listof (or/c story-mode? game-mode?)))  classmap?)
  
      (define (assign-fraction-of-min m)
        (mode-with-minutes (/ (mode-minutes (last (classmap-modes cm)))
                              (length new-modes))
                           m))
  
  
      (define maybe-minutes-changed-modes
        (if keep-map-length?
            (map assign-fraction-of-min new-modes)
            new-modes))
  
      (define new-modes-list
        (flatten (list
                  (take (classmap-modes cm) (- (length (classmap-modes cm)) 1))
                  maybe-minutes-changed-modes)))

  ;because the fractions render weirdly and I don't know how to fix that, this is an ugly work-around:
  
  (if (not (integer?
            (/ (mode-minutes (last (classmap-modes cm)))
               (length new-modes))))
      (error "replace-last-mode error: old mode's length does not evenly divide between the new modes. Use #:keep-map-length #f and edit the modes lengths manually with (mode-with-minutes ...)")
      (struct-copy classmap cm
                   [modes new-modes-list])))





;============ TESTS =============

(module+ test
  (require rackunit)
  (define test-story
    (make-story-mode "Test Story" 1 "summary"
                     @story-text{blah blah blah}))

  ;story-text function
  (check-elements-equal?
   @story-text{Once upon a time there was a test.
               It passed.
               The villagers rejoiced!
               The end.}
   (span
    "Once upon a time there was a test." (br) "It passed." (br)"The villagers rejoiced!" (br)"The end."))

  (check-elements-equal?
   @story-text{Here is another story. @b{this should be bold!}}
   (span
    "Here is another story. " (b "this should be bold!")))

  ;game mode stuff

  (define test-game
    (make-game-mode "Test Game" 1 "summary"
                    (game-info
                     (supplies-list "stuff" "things")
                     (game-instructions
                      "Play the game."))))
  
  ;game-info
  (check-elements-equal?
   (game-info
    (supplies-list "stuff" "more stuff")
    (game-instructions
     "To play this game you must be a black belt in karate and have PhD in astrophysics"
     (steps "Fly to the moon"
            "Kick a new crater into the moon's surface"
            "Laugh")))

   (div
    (supplies-list "stuff" "more stuff")
    (h5 "How to Play:")
    (game-instructions
     "To play this game you must be a black belt in karate and have PhD in astrophysics"
     (steps "Fly to the moon"
            "Kick a new crater into the moon's surface"
            "Laugh")))

   )

  ;supplies-list
  (check-elements-equal?
   (supplies-list "paper" "computers")
   (div
    (h5 "Need:")
    (ul
     (li "paper")
     (li "computers"))))
  
  (check-elements-equal?
   (supplies-list)
   (div
    (h5 "Need:")
    (ul
     (li "no required supplies"))))

  ;game-instructions
  (check-elements-equal?
   (game-instructions
    "This game is rock paper scissors, you know it.")
   (div
    (p "This game is rock paper scissors, you know it.")))

  (check-elements-equal?
   (game-instructions
    (steps "Fly to the moon"
           "Kick a new crater into the moon's surface"
           "Laugh"))
   (div
    (ol
     (li "Fly to the moon")
     (li "Kick a new crater into the moon's surface")
     (li "Laugh"))))

  ;setup
  (check-elements-equal?
   (setup "save the world.")
   (p (i (b "Set Up: ") "save the world.")))

  ;coach-asks 
  (check-elements-equal?
   (coach-asks "Who are you?")
   (span (b "[Coach asks students: " (u "Who are you?") "]")))

  (check-elements-equal?
   (coach-asks "What color is the sky?" #:right-answer "Blue, duh")
   (span (b "[Coach asks students: " (u "What color is the sky?") "]")
         (br)
         (i "Guide students to the answer: " (u "Blue, duh"))))

  (check-elements-equal?
   (coach-asks "What?" #:example-answers (list "Huh?" "Who?" "Chicken Butt"))
   (span (b "[Coach asks students: " (u "What?") "]")
         (br)
         (i "Example answers: " (ul (li "Huh?")
                                     (li "Who?")
                                     (li "Chicken Butt")))))

  (check-elements-equal?
   (coach-asks "Who am I?" #:example-answers (list "Coach" "Teacher" "Lame") #:right-answer "THE BEST")
   (span (b "[Coach asks students: " (u "Who am I?") "]")
         (br)
         (i "Example answers: " (ul (li "Coach")
                                     (li "Teacher")
                                     (li "Lame")))
         (br)
         (i "Guide students to the answer: " (u "THE BEST"))))

  
  )

(define (story-stub title time . notes)
  (make-story-mode title time "" 
    @div{
      @notes
    }))

(define (game-stub title time . notes)
  (make-game-mode title time "" 
    @div{
      @notes
    }))


