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
; use Player instead of STUDENT


;===== ON COMPUTER CODING GAMES =====

(define (disintegrating-code)
  (with-tags
      (list coding memorization k2 3rd-5th middle-school high-school)
  (game-mode "Disintegrating Code" 15
             "Write the code multiple times, but with fewer and fewer hints each time."
             (game-info
              (supplies-list "computers - 1 per Player"
                             "whiteboard and markers"
                             "timer"
                             "code & translation")
              (game-instructions
               (steps "Coach writes the entire code & translation on the whiteboard"
                      "Players type up code as Coach does so"
                      "Players run code"
                      "Players erase code"
                      "Coach erases 1-4 words from the code on the whiteboard (leaving parens, hyphens, other symbols)"
                      "Timer set for roughly 1 min per line of code"
                      "Players type up code, remembering what goes into the blanks"
                      "Round ends when timer goes off"
                      "Repeat steps 4-9 until no words are left on the board, only symbols"
                      "Last round, everything but the translation is erased from the board"))
              (tips "Replace erased words with blanks (______) for extra clarity."
                    "For new coders, start by erasing one word that appears two or more times in the code."
                    "Tag in an advanced student to play the Coach role!"
                    "For Ratchet code, draw symbols and erase those one at a time.")))))



(define (code-anatomy)
  (with-tags
      (list coding memorization teamwork unplugged k2 3rd-5th middle-school high-school)
    (game-mode "Code Anatomy" 15
               "Work as a team to label different parts of the code, then recall the code using only those terms."
               (game-info
                (supplies-list "whiteboard and markers"
                               "code & translation")
                (game-instructions
                 (setup "Write the entire code & translation on the board")
                 (steps "Team works together to remember/guess where the lang line is in the code, with the Coach's guidance"
                        "Coach and Players label all parts of the code with terms like the ones below."
                        "Coach erases all code, leaving the labels"
                        "Team works together to remember the code that belongs to each label, rebuilding the code as it was"
                        "Repeat steps 4 and 5 until recall is easy"
                        )
                 (h5 "Code Terms:")
                 (ul
                  ;inline-pre text too dark
                  (li (inline-pre "#lang _________") " lang line")
                  (li (inline-pre "#:_______") " keyword")
                  (li (inline-pre "(_________-game ...)") " game function call")
                  (li (inline-pre "(basic-_______ ...)") " entity function call")
                  (li (inline-pre "(define (______) ...)") " function definition")
                  (li (inline-pre "(________)") " function call")
                  (li (inline-pre "\"_______\"") " string")
                  ;note: no ratchet terms described here
                  ))
                (tips "End this game with Players typing up the code solo or in pairs, referencing the labels and translation."
                      "Add the timer (with a shorter time each round) for increased challenge."
                      "Coach can re-write the code every time, Players can take turns, or a Scribe may be designated within the Team."
                      "Set up can easily be delegated to a Player.")))))


(define (reverse-engineering)
  (with-tags
      (list coding teamwork review competitive-option k2 3rd-5th middle-school high-school)
    (game-mode "Reverse Engineering" 20
               "Coach shows the Team running code, who then work backwards to write the code."
               (game-info
                (supplies-list "1 computer"
                               "whiteboard/paper and writing utensils"
                               "code")
                (game-instructions
                 (setup "Type in or copy/pastes code from site. Run the code, then adjust the windows so you can see the result of the running code but NOT the code itself.")
                 (steps "Coach shows Team the result of running code"
                        "Team works together to write on paper/whiteboard a detailed translation of the unseen code"
                        "Team works together to write on paper/whiteboard the code to match the translation (and the result)"
                        "Coach or Player types up the code on the computer"
                        "Test the code"
                        "Coach and Team assess: Is this an exact match to the example?"
                        "If needed, edit translation and/or code and repeat steps 4-7"
                        ))
                (tips "For advanced Teams, skip step 3 and have Players write code solo, directly on computers."
                      "Works best for code that only includes elements the Team has worked with before. However, with more advanced Teams, include new concepts for Players to try and figure out."
                      "Split a Team into two and have them compete to finish the fastest! Only recommended for older/more mature Players.")))))


(define (building-up)
  (with-tags
      (list coding teamwork review competitive-option 3rd-5th middle-school high-school)
    (game-mode "Building Up" 20
               "Team works together to break a large translation task into the smallest possible steps, then follows the steps to code the game." 
               (game-info
                (supplies-list "computers - 1 per Player"
                               "paper/whiteboard & writing utensils"
                               "code goal")
                (game-instructions
                 (steps "Coach shows Team the code goal"
                        "Team breaks down the code goal into ordered steps, each step as small as possible while still resulting in working code (see example below)"
                        "Each Player progresses through the steps, typing up code on a computer")
                 (h5 "Example Steps:")
                 (i "Code goal: Code an adventure game with an NPC who has a quest to find their lost sword. Give the quest an ending cutscene including the NPC sprite and some text.")
                 (ol
                  (li "Code a basic adventure game")
                  (li "Define an NPC")
                  (li "Add NPC to game")
                  (li "Give NPC a fetch quest for a sword")
                  (li "Define a cutscene")
                  (li "Add cutscene to game")
                  (li "Add 1 page with text to cutscene")
                  (li "Customize NPC sprite")
                  (li "Add NPC sprite to cutscene")))
                (tips "The code goal might need to remain visible through the entire process -- ex: written on the whiteboard or on the top of the paper."
                 "More beginner Players will likely need Coach's guidance breaking the code goal down into the smallest steps possible."
                      "Add the requirement to RUN the code after every step to practice frequent testing"
                      "Can be made into a competition if each Player \"races\" through the steps, testing after each one. Players can \"sign off\" next to each step as completed with initials/signature/unique symbol. First Player to the end of the list wins!")))))

(define (code-carousel)
  (with-tags
      (list coding partners teamwork review 3rd-5th middle-school high-school)
  (game-mode "Code Carousel" 10
             "Players work in pairs translating english prompt into code, rotating to a new computer every 30 seconds."
             (game-info
              (supplies-list "computers - 1 per 2 Players"
                             "code goal")
              (game-instructions
               (setup "Place all computers in a larger circle or line to make very clear which computer to move to next. Be sure to clarify the direction of travel with Players before the game begins.")
               (steps "Players pair up"
                      "Coach shows Team the code goal"
                      "Coach sets timer for 15-30 seconds"
                      "Each pair of Players code together on 1 computer"
                      "When timer goes off, all pairs move to the next computer (see tip below on how to make this an easy process)"
                      "Coach resets timer"
                      "Pairs pick up with the code in front of them"
                      "Repeat steps 5-7 until all computers have code that meets the goal"))
              (tips "If possible, the code goal might need to remain visible through the entire process -- ex: written on a whiteboard -- to help the Players keep track of the goal"
                    "For younger teams that need guidance on how to work well together, have each pair swap who types (or \"drives\") each time they rotate."
                    "It is likely that some computers will end up with completed code before others. Decide in advance what pairs should do when they end up at a completed computer -- keep adding more code? Engage with the completed, running code product? If they finish at a given computer, do they pull the computer out of the rotation and get to watch the rest of the game play out?"
                   )))))

(define (code-relay)
  (with-tags
      (list coding teamwork competitive 3rd-5th middle-school high-school)
    (game-mode "Code Relay" 15
               "Race against each other (or the clock) to complete the coding challenges!"
               (game-info
                (supplies-list "computers - 1 per Team (see below)"
                               "moderate amount of space for fast movement"
                               "multiple stacks of the same number of code cards"
                               "timer")
                (game-instructions
                 "You can play this game as one large Team, or divided into multiple smaller Teams (teams must be made up of at least 2 Players). If playing as one team, use the timer to add the competition element."
                  (setup "Place computers in a line on one side of the room. Place a stack of code cards, english side up, next to each computer.")
                 (steps "Each Team lines up, across the room from one of the computers"
                        "On Coach's signal the first Player on each Team races over to the computer"
                        "Player translates the english prompt to code"
                        "Player runs the code, making sure it works"
                        "Player returns to their Team, sending the next Player racing over the the computer"
                        "Repeat steps 3-5 until the one Team successfully codes all cards in their deck"))
                (tips "Choose how Players can move quickly but safely: this can range from a strict heel-toe walk to a full-out sprint, depending on the age of the players, size of the playing space, and obstacles around the space."
                      "If players get stuck, Coach can either offer help, or allow them to return the card to the bottom of the deck and pick a new one. For a \"penalty\" for either of these actions, the Coach can use the timer and enforce a 5-10 second freeze before continuing."
                      "If correctly interpreting the challenge may be a problem, limit the number of teams to the number of Coaches, placing one Coach by each computer to check.")))))

;paused here

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
               "Team circles up, a hex card is passed around the circle and each Player gets 10 seconds to look at it and attempt to memorize it. Hex card makes a round or two before the Coach collects it and replaces with a computer, whiteboard or paper. Team works together to re-write the code from memory."))))

(define (build-a-bug-workshop)
  (game-mode "Build a Bug Workshop" 10
             "Break your partner's code -- on purpose!"
             (game-info
              (supplies-list)
              (game-instructions "Players partner up. Both Players type up code on their computer. They swap computers and break their partner's code somehow. They swap back and try to debug. Can be made into a race!"))))

(define (code-connect-four)
  (game-mode "Connect Four" 30
             "Not the board game"
             (game-info
              (supplies-list)
              (game-instructions "Coach sets up a 4x4 grid of hex cards (code-side-up for easier, english-side-up for harder). Players must write code that fills four of cards in a horizontal/vertical/diagonal line"))))

;===== UNPLUGGED GAMES =======

(define (specificity-game)
  (game-mode "Specificity Game (or How To Make a PB&J)" 15
             "Player gives instructions to another Player on how to do a task: talker cannot see doer. Doer has to follow all instructions exactly as given."
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
               (steps "Each pair creates their own words for a set of shape combinations as defined by teh Coach (drawn on a white board where everyone can see, projected, handed out on a worksheet, etc). Then, one partner instructs the other on how to draw an end picture (only they can see) using the words they created."
                      "This game should include a few end pictures and the shapes to define them.")))))

(define (find-the-portkey)
  (game-mode "Find the Portkey" 20
             "Harry Potter reference is mandatory"
             (game-info
              (supplies-list)
              (game-instructions"Two or more teams create their own, secret language to accomplish the goal of directing a teammate to a specific object in the room. Once language is developed, each team sends away a Player (their 'wizard') while the rest of the Players in the room pick a 'portkey' -- an object already in the room. The 'wizards' return, and each team takes turns giving their wizard a one-sentence instruction guiding them towards the 'portkey.' The first team to get their 'wizard' to touch the 'portkey' wins."))))

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
               "In a circle, each Player introduces themselves and says a quick fact about themselves, as well as reviewing the names and facts of all students who have gone before them.")
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
             "Students score their own creation using the following formula with the Coach's guidance."
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
               "Play the game below, but use pair programming techniques. Partner up the Players and have them play as a team, replacing every mention of a single Player in the game below with that partnership:"
              
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
