#lang at-exp racket

(provide coa-mottos-creation
         disintegrating-code
         hello-world-beginner-game
         name-memory-game
         final-jam
         scoring-jam
         market-time
         code-anatomy
         specificity-game
         whaddya-call-that
         whaddya-call-that-partners
         find-the-portkey
         reverse-engineering
         code-carousel
         building-up
         code-relay
         code-olympics
         create-a-challenge
         reverse-translation
         mind-meld
         build-a-bug-workshop
         code-connect-four
         add-pair-programming
         example-game
         all-games)

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt")

;Language standardization:
; use TEAM instead of CLASS
; use PLAYER instead of STUDENT


;===== ON COMPUTER CODING GAMES =====

(define (disintegrating-code)
  (with-tags
      (list coding memorization)
  (game-mode "Disintegrating Code" 15
             "Write the code multiple times, but with fewer and fewer hints each time."
             (game-info
              (supplies-list "computers - 1 per player" "whiteboard and markers" "code card" "timer")
              (game-instructions
               (steps "Coach writes the entire code & translation on the whiteboard"
                      "Players type up code as Coach does so"
                      "Players run code"
                      "Players erase code"
                      "Coach erases 1-4 words from the code on the whiteboard (leaving parens, hyphens, other symbols)"
                      "Timer set for roughly 1 min per line of code"
                      "Players type up code, remembering what goes into the blanks"
                      "Round ends when timer goes off"
                      "Players erase code"
                      "Coach erases more words from code on the whiteboard"
                      "Timer reset"
                      "Players type up code"
                      "Rounds continue until no words are left, only symbols"
                      "Last round, everything but the translation is erased from the board"))
              (tips "Replace erased words with blanks (______) for extra clarity."
                    "For new coders, start by erasing one word that appears two or more times in the code."
                    "Tag in an advanced student to play the Coach role!")))))

;didn't work :(
(define (code-with-tip c t)
  (div (pre c) (p (~a " " t))))

(define (code-anatomy)
  (with-tags
      (list coding memorization)
  (game-mode "Code Anatomy" 15
             "Work as a team to label different parts of the code, then recall the code using only those terms."
             (game-info
              (supplies-list "whiteboard and markers" "code card" "timer")
              (game-instructions
               (steps "Coach writes the entire code & translation on the board"
                      "Team works together to remember/guess where the LANG LINE is in the code, with the Coach's guidance"
                      "Coach and Players label all parts of the code with terms like the ones below."
                      "Coach erases all code, leaving the labels"
                      "Team works together to remember the code that belongs to each label, rebuilding the code as it was"
                      )
               (h5 "Code Terms:")
               (ul
                (li (code-with-tip "#lang adventure" "<-- lang line"))))))))

(define (reverse-engineering)
  (game-mode "Reverse Engineering" 20
             "Coach shows the team a game, team works backwards to code that game."
             (game-info
              (supplies-list)
              (game-instructions
               (steps "Play the game")))))

(define (building-up)
  (game-mode "Building Up" 20
             "Team works together to break a large translation task into the smallest possible steps, then follows the steps to code the game." 
             (game-info
              (supplies-list)
              (game-instructions
               (steps "Play the game")))))

(define (code-carousel)
  (game-mode "Code Carousel" 10
             "Players work in pairs translating english prompt into code, rotating to a new computer every 30 seconds."
             (game-info
              (supplies-list)
              (game-instructions
               (steps "Play the game")))))

(define (code-relay)
  (game-mode "Code Relay" 15
             "Race against each other or the clock to code!"
             (game-info
              (supplies-list)
              (game-instructions "Can play with one large team, or divided into multiple teams (teams must be made up of at leat 2 players). Players line up and take turns racing to a computer at the end of the room, flipping over the next card, writing the code described on the card and running it, before racing back to tag the next member of their team."))))

(define (code-olympics)
  (game-mode "Code Olympics" 20
             "Small teams travel from 'event' to 'event' -- completing a Game Mode at each station. Potential for awards!"
             (game-info
              (supplies-list)
              (game-instructions
               (steps "Play the game")))))

(define (create-a-challenge)
  (game-mode "Create a Challenge" 10
             "Team works together to define the english/stimulus side of a translation challenge, before taking on that challenge themselves."
             (game-info
              (supplies-list)
              (game-instructions
               (steps "Play the game")))))

(define (reverse-translation)
  (game-mode "Reverse Translation" 5
             "Players see code, translate what that code does into english as specifically as possible."
             (game-info
              (supplies-list)
              (game-instructions
               (steps "Play the game")))))

(define (mind-meld)
  (game-mode "Mind Meld" 10
             "Can you meld your mind into ONE?!"
             (game-info
              (supplies-list)
              (game-instructions
               "Team circles up, a hex card is passed around the circle and each player gets 10 seconds to look at it and attempt to memorize it. Hex card makes a round or two before the Coach collects it and replaces with a computer, whiteboard or paper. Team works together to re-write the code from memory."))))

(define (build-a-bug-workshop)
  (game-mode "Build a Bug Workshop" 10
             "Break your partner's code -- on purpose!"
             (game-info
              (supplies-list)
              (game-instructions "Players partner up. Both players type up code on their computer. They swap computers and break their partner's code somehow. They swap back and try to debug. Can be made into a race!"))))

(define (code-connect-four)
  (game-mode "Connect Four" 30
             "Not the board game"
             (game-info
              (supplies-list)
              (game-instructions "Coach sets up a 4x4 grid of hex cards (code-side-up for easier, english-side-up for harder). Players must write code that fills four of cards in a horizontal/vertical/diagonal line"))))

;===== UNPLUGGED GAMES =======

(define (specificity-game)
  (game-mode "Specificity Game (or How To Make a PB&J)" 15
             "Player gives instructions to another player on how to do a task: talker cannot see doer. Doer has to follow all instructions exactly as given."
             (game-info
              (supplies-list)
              (game-instructions
              "see beyondthechalkboard.org/activity/how-to-make-a-peanut-butter-jelly-sandwich/"
              "also https://www.ultimatecampresource.com/camp-games/cooperative-games/airplane-game/"
              ))))

;====== LANG CREATION GAMES =====

(define (whaddya-call-that)
  (game-mode "Whaddya Call That?!" 20
             "Team works together to create words for shape combinations (defining) then a leader instructs them to draw a picture (only they can see) using those words."
             (game-info
              (supplies-list)
              (game-instructions
               (steps "Team works together to create words for shape combinations (defining) then a leader instructs them to draw a picture (only they can see) using those words."
                      "This game should include a few end pictures and the shapes to define them.")))))

(define (whaddya-call-that-partners)
  (game-mode "Whaddya Call That?! Partner Version" 20
             "Each pair creates their own language"
             (game-info
              (supplies-list)
              (game-instructions
               (steps "Each pair creates their own words for a set of shape combinations as defined by teh coach (drawn on a white board where everyone can see, projected, handed out on a worksheet, etc). Then, one partner instructs the other on how to draw an end picture (only they can see) using the words they created."
                      "This game should include a few end pictures and the shapes to define them.")))))

(define (find-the-portkey)
  (game-mode "Find the Portkey" 20
             "Harry Potter reference is mandatory"
             (game-info
              (supplies-list)
              (game-instructions"Two or more teams create their own, secret language to accomplish the goal of directing a teammate to a specific object in the room. Once language is developed, each team sends away a player (their 'wizard') while the rest of the players in the room pick a 'portkey' -- an object already in the room. The 'wizards' return, and each team takes turns giving their wizard a one-sentence instruction guiding them towards the 'portkey.' The first team to get their 'wizard' to touch the 'portkey' wins."))))

;===== CLASS LAUNCH GAMES =====

(define (coa-mottos-creation)
  (game-mode "Code of Awesomeness Mottos" 15
             "Create your teams' mottos for each Code"
             (game-info
              (supplies-list)
              (game-instructions
               (steps "Have them come up with mottos for the following ...")))))

(define (hello-world-beginner-game)
  (game-mode "Hello World Game" 10
             "The first coding game of most courses"
             (game-info
              (supplies-list)
              (game-instructions
               "Run Disintegrating code, using the Hello World kata in your #lang"

               (mode->content-card 
                #:fade? #f
                (disintegrating-code))
               ))))

;====== NAME GAMES =========

(define (name-memory-game)
  (game-mode "Name Memory Game" 5
             "A classic!"
             (game-info
              (supplies-list)
              (game-instructions
               "In a circle, each player introduces themselves and says a quick fact about themselves, as well as reviewing the names and facts of all students who have gone before them.")
              )))

;look thru https://www.ultimatecampresource.com/ice-breakers/name-games/


;====== FINAL JAM =======

(define (final-jam)
  (game-mode "Final Jam" 20
             "The end of most courses!"
             (game-info
              (supplies-list)
              (game-instructions "Students take everything they have learned and build a game or other program in the language they have been studying. Usually a partnered game."))))

(define (scoring-jam)
  (game-mode "Final Jam Scoring & Awarding" 10
             "Students score their own creation using the following formula with the coach's guidance."
             (game-info
              (supplies-list)
              (game-instructions "DO IT"))))

; ===== MISC ======

(define (market-time)
  (game-mode "Market" 10
             "Everyone loves buying stuff"
             (game-info
              (supplies-list)
              (game-instructions "Note that time greatly depends on number of students. Coach steps into the role as the Shop Keeper and students can use their fake money to purchase small toys etc.")
              (tips "Organize your Market like an Arcade"))))

(define (example-game)
  (game-mode "EXAMPLE GAME" 5
             "This game is a not a real game"
             (game-info
              (supplies-list)
              (game-instructions
               "No really, stop trying to play it."))))

;==== GAME CHANGERS =====

(define/contract (add-pair-programming g)
  (-> game-mode? game-mode?)
  (game-mode (~a "Pair Programming: " (game-mode-name g)) (game-mode-minutes g)
             (~a (game-mode-name g) ": now with more TEAMWORK")
             (game-info
              (supplies-list)
              (game-instructions
               "Play the game below, but use pair programming techniques. Partner up the players and have them play as a team, replacing every mention of a single player in the game below with that partnership:"
              
              (mode->content-card 
               #:fade? #f
               g)))))




(define (all-games)
  (list
   ;class launch
   (coa-mottos-creation)
   (name-memory-game)
   (hello-world-beginner-game)
   ;code on comp games
   (code-anatomy)
   (disintegrating-code)
   (reverse-engineering)
   (building-up)
   (code-carousel)
   (code-relay)
   (code-olympics)
   (create-a-challenge)
   (reverse-translation)
   (mind-meld)
   (build-a-bug-workshop)
   (code-connect-four)
   ;unplugged games
   (specificity-game)
   ;lang games
   (whaddya-call-that)
   (whaddya-call-that-partners)
   (find-the-portkey)
   ;final jam
   (final-jam)
   (scoring-jam)
   ;misc games
   (market-time)
   (add-pair-programming (example-game))
   ))


(module+ test
  (require rackunit)

  (all-games))
