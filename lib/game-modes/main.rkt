#lang at-exp racket

(provide coa-mottos-creation
         disintegrating-code
         hello-world-beginner-game
         name-memory-game
         final-jam
         scoring-jam
         market-time
         code-anatomy
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
         name-and-motion
         name-alliteration
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
      (list coding memorization communication teamwork unplugged k2 3rd-5th middle-school high-school)
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
      (list coding teamwork communication review competitive-option k2 3rd-5th middle-school high-school)
    (game-mode "Reverse Engineering" 20
               "Coach shows the Team running code, who then work backwards to write the code."
               (game-info
                (supplies-list "computers - 1 per Team"
                               "whiteboard/paper and writing utensils"
                               "code")
                (game-instructions
                 (setup "Type in or copy/paste implementation from site. Run the code, then adjust the windows so you can see the result of the running code but NOT the implementation itself.")
                 (steps "Coach shows Team the result of running implementation"
                        "Team works together to write a detailed specification of the unseen code on paper/whiteboard "
                        "Team works together to write the code to implement the specification (and get the result they see) on paper/whiteboard"
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
      (list coding teamwork communication review competitive-option 3rd-5th middle-school high-school)
    (game-mode "Building Up" 20
               "Team works together to break a large translation task into the smallest possible steps, then follows the steps to code the game." 
               (game-info
                (supplies-list "computers - 1 per Player"
                               "paper/whiteboard & writing utensils"
                               "specification")
                (game-instructions
                 (steps "Coach shows Team the specification"
                        "Team breaks down the specification into ordered steps, each step as small as possible while still resulting in working code (see example below)"
                        "Each Player progresses through the steps, typing up code on a computer")
                 (h5 "Example Steps:")
                 (i "Specification: Code an adventure game with an NPC who has a quest to find their lost sword. Give the quest an ending cutscene including the NPC sprite and some text.")
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
                (tips "The specification might need to remain visible through the entire process -- ex: written on the whiteboard or on the top of the paper."
                 "More beginner Players will likely need Coach's guidance breaking the specification down into the smallest steps possible."
                      "Add the requirement to RUN the code after every step to practice frequent testing"
                      "Can be made into a competition if each Player \"races\" through the steps, testing after each one. Players can \"sign off\" next to each step as completed with initials/signature/unique symbol. First Player to the end of the list wins!")))))

(define (code-carousel)
  (with-tags
      (list coding partners communication teamwork review 3rd-5th middle-school high-school)
  (game-mode "Code Carousel" 10
             "Players work in pairs translating english prompt into code, rotating to a new computer every 30 seconds."
             (game-info
              (supplies-list "computers - 1 per 2 Players"
                             "specification")
              (game-instructions
               (setup "Place all computers in a larger circle or line to make very clear which computer to move to next. Be sure to clarify the direction of travel with Players before the game begins.")
               (steps "Players pair up"
                      "Coach shows Team the specification"
                      "Coach sets timer for 15-30 seconds"
                      "Each pair of Players code together on 1 computer"
                      "When timer goes off, all pairs move to the next computer (see tip below on how to make this an easy process)"
                      "Coach resets timer"
                      "Pairs pick up with the code in front of them"
                      "Repeat steps 5-7 until all computers have code that meets the goal"))
              (tips "If possible, the specification might need to remain visible through the entire process -- ex: written on a whiteboard -- to help the Players keep track of the goal"
                    "For younger teams that need guidance on how to work well together, have each pair swap who types (or \"drives\") each time they rotate."
                    "It is likely that some computers will end up with completed implementation before others. Decide in advance what pairs should do when they end up at a completed computer -- keep adding more code? Engage with the completed, running implementation? If they finish at a given computer, do they pull the computer out of the rotation and get to watch the rest of the game play out?"
                   )))))

(define (code-relay)
  (with-tags
      (list coding teamwork competitive 3rd-5th middle-school high-school)
    (game-mode "Code Relay" 15
               "Race against each other (or the clock) to complete the coding challenges!"
               (game-info
                (supplies-list "computers - 1 per Team"
                               "moderate amount of space for fast movement"
                               "multiple stacks of the same number of code cards"
                               "timer")
                (game-instructions
                 "You can play this game as one large Team, or divided into multiple smaller Teams (teams must be made up of at least 2 Players). If playing as one team, use the timer to add the competition element."
                  (setup "Place computers in a line on one side of the room. Place a stack of code cards, english side up, next to each computer.")
                 (steps "Each Team lines up, across the room from one of the computers"
                        "On Coach's signal the first Player on each Team races over to the computer"
                        "Player translates the specification into code"
                        "Player runs the implementation, making sure it works"
                        "Player returns to their Team, sending the next Player racing over the the computer"
                        "Repeat steps 3-5 until the one Team successfully codes all cards in their deck"))
                (tips "Choose how Players can move quickly but safely: this can range from a strict heel-toe walk to a full-out sprint, depending on the age of the players, size of the playing space, and obstacles around the space."
                      "If players get stuck, Coach can either offer help, or allow them to return the card to the bottom of the deck and pick a new one. For a \"penalty\" for either of these actions, the Coach can use the timer and enforce a 5-10 second freeze before continuing."
                      "If correctly interpreting the challenge may be a problem, limit the number of teams to the number of Coaches, placing one Coach by each computer to check.")))))


(define (code-olympics)
  (with-tags
      (list coding teamwork competitive review 3rd-5th middle-school high-school)
    (game-mode "Code Olympics" 25
               "Small teams travel from 'event' to 'event' -- completing a Game Mode at each station."
               (game-info
                (supplies-list "3-5 distinct stations around the space"
                               "all supplies for chosen Games"
                               "timer")
                (game-instructions
                 (setup "Choose 3-5 other Games to be the events (see below for recommendations). Set up a station around the room for each event.")
                 (steps "Players divide into Teams (the number of Teams should be equal to or less than the number of events)"
                        "Coach explains each event"
                        "Coach assigns each Team an event to start with"
                        "Coach sets timer for round length"
                        "Teams start at first event"
                        "When timer goes off, Teams rotate to the next event"
                        "Continue until all Teams have attempted each event")
                 (h5 "Recommended Events:")
                 (i "The best Game Modes for the Olympics are games that: A) your team will be familiar with, B) can run without your help, C) Players can self-identify when they have succeeded D) can take approximately the same (short) amount of time to play. Here are some suggestions:")
                 (ul
                  (li "Code Relay")
                  (li "Reverse Engineering")
                  (li "Connect Four")
                  (li "a straight-forward team de-bugging task")
                  (li "a straight-forward team memorization task")
                  (li "a straight-forward team translation task")))
                (tips "Set the timer for a length of time where completion of the event is likely, while limiting the possibility of down time between completion and the next round."
                      "Have fun with the Olympics theme -- have each Team choose a 'home country,' create fun names for each event, play the role of the Games Announcer..."
                      "The competition element can be downplayed or emphasized. If the Team has the maturity to handle the competion: keep track of the 'winners' in each event (who finishes the event fastest, or gets through the most cards, or creates the most complex game...). Announce Gold, Silver and Bronze for each event. Paper and pen is recommended to keep track throughout the multiple rounds.")))))

(define (create-a-challenge)
  (with-tags
      (list coding teamwork communication review k2 3rd-5th middle-school high-school)
    (game-mode "Create a Challenge" 10
               "The Team works together to design specification for a coding challenge, before taking on that challenge themselves."
               (game-info
                (supplies-list "whiteboard/paper and writing utensils"
                               "computers - 1 per Player")
                (game-instructions
                 (steps "Team designs an achievable specification"
                        "The finalized specification is written down where everyone can see"
                        "Team designates a time limit and sets the timer"
                        "Players code an implementation on individual computers"))
                (tips "Ideally, a Team could run this game entirely by themselves without the Coach's help! But most teams, especially those with younger or inexperienced Players, will need the Coach's guidance to work well as a team and find a specification and time limit that is a good balance of challenging and acheivable. Experienment with when to step in and when to let the Team figure it out."
                      "Teams with a wide range in skill and experience can easily be split into smaller Teams, each running this game independently of the other Team(s).")))))

(define (reverse-translation)
  (with-tags
      (list coding communication unplugged review competitive-option k2 3rd-5th middle-school high-school)
      (game-mode "Reverse Translation" 5
                 "Starting with just an implementation, the Team translates it back to a specification with as much detail as possible."
                 (game-info
                  (supplies-list "code card")
                  (game-instructions
                   "Break up larger Teams into smaller groups for this Game so that all members of the Team have a chance to see the code card and voice their opinions."
                   (steps "Coach gives the Team a code card, implementation-side up"
                          "Without flipping the card, Team translates the code into english, describing what the code will do when run"
                          "Coach guides the Players to give as much detail as possible"))
                  (tips "Optional final step: Team tests their hypothesis by typing up the code and running it."
                        "If a projector is available, project the code where everyone can see it."
                        "Add a competitive element by splitting the larger Team into two or more Teams, showing all Teams the same code (pass around the card, write on a whiteboard, project from computer), set the timer for discussion, and then have each team present their case. Whomever is most detailed in their translation gets a point."
                        "Enforce equal input within a Team by having Players raise hands and wait to be called on or take turns around a circle sharing details about the code.")))))

(define (mind-meld)
  (with-tags
      (list coding memorization teamwork review 3rd-5th middle-school high-school)
    (game-mode "Mind Meld" 10
               "Can your whole Team think with ONE MIND?!"
               (game-info
                (supplies-list "code card"
                               "computer - 1 per Team")
                (game-instructions
                 (steps "Team sits in a circle"
                        "Coach hands the code card to first Player"
                        "Team counts down in unison from 10 to 1 as the Player attempts to memorize the code"
                        "Player passes code card to their left"
                        "Repeat steps 3-4 until every Player has seen the code card twice"
                        "Coach takes the code card away"
                        "Coach gives the Team a computer"
                        "Coach sets a timer"
                        "Team attempts to type up the code, exactly as it appeared on the card"
                        "When time is up or Team is done, Coach returns the card"
                        "Team checks their accuracy against the original code card"))
                (tips "The fun of this game largely comes from the lack of preparation. Planning what each Player will memorize in advance or spending too much time memorizing the code can take the challenge out of the game! Multiple attempts, failures and \"almosts\" before finally succeeding is what makes any game satifying."
                      "The computer in the game can be replaced or preceded by whiteboard/paper. After writing the code on paper, the Team can either type it in, or skip the computer entirely and go straight to comparing their code to the card. This can be quite a bit harder!"
                      "For Teams that are still building their basic teamwork skills, the Coach can assign a Scribe or Typist when the team is rebuilding to code. The Player in this role should be taking the input from the Team, not just writing their own ideas! Other solutions to this problem is all Players take turns writing/typing or the Coach takes on this role.")))))

(define (build-a-bug-workshop)
  (with-tags
      (list partners debugging review competitive-option k2 3rd-5th middle-school high-school)
    (game-mode "Build a Bug Workshop" 10
               "Players purposely break and debug code in this partnered game."
               (game-info
                (supplies-list "computers - 1 per Player")
                (game-instructions
                 (setup "Each Player needs complete, working code on their computer to start this game. Either tack it on to a game like Disintegrating Code, or preface the game by typing up code from reference, specification, or each Player's own imagination! Just be sure all code works before starting this game.")
                 (steps "Players pair up"
                        "Players swap computers, each with complete working code"
                        "Players put a bug in their partner's code -- causing an error"
                        "Players swap back computers and debug their now-broken code"))
                (tips "For some friendly competition, turn the game into a race: who can debug their code faster?"
                      "Start this game with a discussion about the bugs they have come across so far -- spelling errors, missing paretheses, wrong keywords -- to spark creativity about the kind of errors to plant in their partner's code.")))))

(define (code-connect-four)
  (with-tags
      (list coding review competitive-option 3rd-5th middle-school high-school)
    (game-mode "Connect Four" 30
               "Players creatively connect different code cards to create a custom specification and write the resulting code."
               (game-info
                (supplies-list "9 or 16 code cards"
                               "computers - 1 per Player")
                (game-instructions
                 (setup "Choose a set of 9 or 16 code cards with as few overlaps or contradictions as possible and arrange them into a 3x3 or 4x4 grid in a centralized location. Place the cards with the inmplementation-side (code) up for an easier game and specification-side up for a harder game.")
               
                 "Players write code independently, each trying to build an end product that matches multiple code cards on the grid -- forming a vertical, horizontal or diagonal line of cards on the grid.")
                (tips "Can eaily be made inot a race against the clock or other Players on the team.")))))

;===== UNPLUGGED GAMES =======

#;(define (specificity-game)
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
  (with-tags
      (list language-creation teamwork communication unplugged 3rd-5th middle-school high-school)
  (game-mode "Whaddya Call That?!" 20
             "Team works together to create a new language to help them draw a picture as described by Coach."
             (game-info
              (supplies-list "whiteboard or other way to display drawings to the whole group"
                             "writing utensils")
              (game-instructions
               (setup )
               (steps "Team works together to create words for shape combinations (defining) then a leader instructs them to draw a picture (only they can see) using those words."
                      "This game should include a few end pictures and the shapes to define them.")
               (h5 "Shapes and Pictures to Try!")
               ))))

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
  (with-tags
      (list name-game unplugged k2 3rd-5th middle-school high-school)
    (game-mode "Name Memory Game" 5
               "Players share about themselves and test their memory by repeating what Players before them have said."
               (game-info
                (supplies-list)
                (game-instructions
                 "Coach(es) should participate in the game as a Player as well as a Coach."
                 (steps "Players (and Coach) sit in a circle"
                        "Coach sets a prompt (see suggestions below)"
                        "Player A states their name and an answer to the prompt"
                        "Player B, the next Player in the circle, repeats Player A's name and answer"
                        "Player B shares their own name and answer"
                        "Player C repeats A and B's names and answers before adding their own"
                        "Play continues around the circle until all Players have gone")
                 (h5 "Prompt Examples:")
                 (ul
                  (li "Continue the conversation from your Coach Story by using a relevant discussion question as the prompt")
                  (li "Any previous coding experience")
                  (li "Favorite computer activity")
                  (li "Dream pet/vacation/job/etc")
                  (li "Favorite food/color/video game/book/movie/etc")
                  (li "What you did over summer break/the weekend/etc")))
                ))))

(define (name-and-motion)
  (with-tags
      (list name-game unplugged k2 3rd-5th)
    (game-mode "Name and Motion" 5
               "Players introduce themselves with a name, an activity they like to do and a matching movement."
               (game-info
                (supplies-list)
                (game-instructions
                 "Coach(es) should participate in the game as a Player as well as a Coach."
                 (steps "Players (and Coach) stand in a circle"
                        "Starting Player states their name, something they like to do and mimes doing said activity"
                        "All Players repeat the name, activity and movement"
                        "The next Player in the circle says their name, activity and does a movement"
                        "Repeat steps 3-4 until all Players have gone")
                 (h5 "An Example:")
                 "Gina: My name is Gina and I like playing soccer (Gina mimes kicking a ball)."
                 "All Players: Gina likes playing soccer (mimes kicking a ball)"
                 )
                (tips "To allow for more variation in movement and activities, feel free to add the caveat that the activity must not involve be on a computer, tablet or phone."
                      "After all Players have gone, ask if anyone remembers another Player's name, activity and motion. Take turns sharing.")))))

(define (name-alliteration)
  (with-tags
      (list name-game unplugged 3rd-5th middle-school high-school)
    (game-mode "Name Alliteration" 5
               "Players introduce themselves with an alliterative adjective/name combo and a matching movement."
               (game-info
                (supplies-list)
                (game-instructions
                 "Coach(es) should participate in the game as a Player as well as a Coach."
                 (steps "Players (and Coach) stand in a circle"
                        "Starting Player states their name preceded by an alliterative adjective"
                        "Starting Player also does a simple movement to go with their adjective and name"
                        "All Players repeat the adjective, name and movement"
                        "The next Player in the circle says their alliterative adjective, name and does a movement"
                        "Repeat steps 4-5 until all Players have gone")
                 (h5 "An Example:")
                 "Marcus: Magnificent Marcus (strikes heroic pose)."
                 "All Players: Magnificent Marcus (strikes heroic pose)"
                 )
                (tips "Variation: As every Player adds their alliterative adjective, name and movement, the whole Team repeats all previous Players as well as the new addition."
                      "Variation: Before adding their alliterative adjective, name and movement, a Player must speed through all previous Players'.")))))
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
   (hello-world-beginner-game)
   ;name games
   (name-memory-game)
   (name-and-motion)
   (name-alliteration)
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
