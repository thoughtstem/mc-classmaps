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
         "../rendering.rkt")

;Language standardization:
; use TEAM instead of CLASS
; use PLAYER instead of STUDENT


;===== ON COMPUTER CODING GAMES =====

(define (disintegrating-code)
  (game-mode "Disintegrating Code" 15
             ;TODO: Don't use a raw div here.  Call a function to standardize the visual language.
             (div
              ;Todo, make a function for (step ...)
              (p "Step 1: Pick a translation challenge.  ")
              (p "Step 2: ..."))))

(define (code-anatomy)
  (game-mode "Code Anatomy" 15
             (div
              (p "Team works together to label different parts of the code, then recall the code based on those names..."))))

(define (reverse-engineering)
  (game-mode "Reverse Engineering" 20
             (div
              (p "Coach shows the team a game, team works backwards to code that game..."))))

(define (building-up)
  (game-mode "Building Up" 20
             (div
              (p "Team works together to break a large translation task into the smallest possible steps, then follows the steps to code the game..." ))))

(define (code-carousel)
  (game-mode "Code Carousel" 10
             (div
              (p "Players work in pairs translating english prompt into code, rotating to a new computer every 30 seconds..."))))

(define (code-relay)
  (game-mode "Code Relay" 15
             (div
              (p "Can play with one large team, or divided into multiple teams (teams must be made up of at leat 2 players). Players line up and take turns racing to a computer at the end of the room, flipping over the next card, writing the code described on the card and running it, before racing back to tag the next member of their team."))))

(define (code-olympics)
  (game-mode "Code Olympics" 20
             (div
              (p "Small teams travel from 'event' to 'event' -- completing a Game Mode at each station. Potential for awards!"))))

(define (create-a-challenge)
  (game-mode "Create a Challenge" 10
             (div
              (p "Team works together to define the english/stimulus side of a translation challenge, before taking on that challenge themselves."))))

(define (reverse-translation)
  (game-mode "Reverse Translation" 5
             (div
              (p "Players see code, translate what that code does into english as specifically as possible."))))

(define (mind-meld)
  (game-mode "Mind Meld" 10
             (div
              (p "Team circles up, a hex card is passed around the circle and each player gets 10 seconds to look at it and attempt to memorize it. Hex card makes a round or two before the Coach collects it and replaces with a computer, whiteboard or paper. Team works together to re-write the code from memory."))))

(define (build-a-bug-workshop)
  (game-mode "Build a Bug Workshop" 10
             (div
              (p "Players partner up. Both players type up code on their computer. They swap computers and break their partner's code somehow. They swap back and try to debug. Can be made into a race!"))))

(define (code-connect-four)
  (game-mode "Connect Four" 30
             (div
              (p "Coach sets up a 4x4 grid of hex cards (code-side-up for easier, english-side-up for harder). Players must write code that fills four of cards in a horizontal/vertical/diagonal line"))))

;===== UNPLUGGED GAMES =======

(define (specificity-game)
  (game-mode "Specificity Game (or How To Make a PB&J)" 15
             (div
              (p "Player gives instructions to another player on how to do a task: talker cannot see doer. Doer has to follow all instructions exactly as given.")
              ;see beyondthechalkboard.org/activity/how-to-make-a-peanut-butter-jelly-sandwich/
              ;also https://www.ultimatecampresource.com/camp-games/cooperative-games/airplane-game/
              )))

;====== LANG CREATION GAMES =====

(define (whaddya-call-that)
  (game-mode "Whaddya Call That?!" 20
             (div
              (p "Team works together to create words for shape combinations (defining) then a leader instructs them to draw a picture (only they can see) using those words.")
              (p "This game should include a few end pictures and the shapes to define them."))))

(define (whaddya-call-that-partners)
  (game-mode "Whaddya Call That?! Partner Version" 20
             (div
              (p "Each pair creates their own words for a set of shape combinations as defined by teh coach (drawn on a white board where everyone can see, projected, handed out on a worksheet, etc). Then, one partner instructs the other on how to draw an end picture (only they can see) using the words they created.")
              (p "This game should include a few end pictures and the shapes to define them."))))

(define (find-the-portkey)
  (game-mode "Find the Portkey" 20
             (div
              (p "Two or more teams create their own, secret language to accomplish the goal of directing a teammate to a specific object in the room. Once language is developed, each team sends away a player (their 'wizard') while the rest of the players in the room pick a 'portkey' -- an object already in the room. The 'wizards' return, and each team takes turns giving their wizard a one-sentence instruction guiding them towards the 'portkey.' The first team to get their 'wizard' to touch the 'portkey' wins."))))

;===== CLASS LAUNCH GAMES =====

(define (coa-mottos-creation)
  (game-mode "Code of Awesomeness Mottos" 15
             (div
              (p "Have them come up with mottos for the following ...")
              (ipsum 50))))

(define (hello-world-beginner-game)
  (game-mode "Hello World Game" 10
             (div
              (p "Run Disintegrating code, using the Hello World kata in your #lang")

              (mode->content-card 
               #:fade? #f
               (disintegrating-code))
              )))

;====== NAME GAMES =========

(define (name-memory-game)
  (game-mode "Name Memory Game" 5
             (div
              (p "In a circle, each player introduces themselves and says a quick fact about themselves, as well as reviewing the names and facts of all students who have gone before them.")
              )))

;look thru https://www.ultimatecampresource.com/ice-breakers/name-games/


;====== FINAL JAM =======

(define (final-jam)
  (game-mode "Final Jam" 20
             (div
              (p "Students take everything they have learned and build a game or other program in the language they have been studying. Usually a partnered game."))))

(define (scoring-jam)
  (game-mode "Final Jam Scoring & Awarding" 10
             (div
              (p "Students score their own creation using the following formula with the coach's guidance...")
              )))

; ===== MISC ======

(define (market-time)
  (game-mode "Market" 10
             (div
              (p "Note that time greatly depends on number of students. Coach steps into the role as the Shop Keeper and students can use their fake money to purchase small toys etc.")
              )))

(define (example-game)
  (game-mode "EXAMPLE GAME" 5
             (div (p "Sample Game"))))

;==== GAME CHANGERS =====

(define/contract (add-pair-programming g)
  (-> game-mode? game-mode?)
  (game-mode (~a "Pair Programming: " (game-mode-name g)) (game-mode-minutes g)
             (div
              (p "Play the game below, but use pair programming techniques. Partner up the players and have them play as a team, replacing every mention of a single player in the game below with that partnership:")
              
              (mode->content-card 
               #:fade? #f
               g))))




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
