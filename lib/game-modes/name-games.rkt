#lang at-exp racket

(provide name-memory-game
         name-and-motion
         name-alliteration
         compass-name-game
         name-games)

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt"
         website-js/components/accordion-cards)

;Language standardization:
; use TEAM instead of CLASS
; use Player instead of STUDENT



;=== add games here for testing and publishing live ===
(define (name-games)
  (list
   (name-memory-game)
   (name-and-motion)
   (name-alliteration)
   (compass-name-game)
   ))


(module+ test
  (require rackunit)

  (name-games))



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

(define (compass-name-game)
  (with-tags
      (list name-game unplugged k2 3rd-5th)
    (game-mode "Compass Name Game" 5
               "A multi-level name game with speed and a technological flavor."
               (game-info
                (supplies-list)
                (game-instructions
                 "Levels must be played in order."
                 (accordion-card #:header "Level One"
                                 #:dark? #t
                                 (steps "Players circle up around Coach"
                                        "Coach points to a Player in the circle"
                                        "That Player says their name and a fact of a given type (favorite computer activity, video game, food, what they did last weekend, etc)"
                                        "Repeat steps 2 and 3 until every Player has shared at least once, Coach speeding up/switchng up order to keep Players on their toes!"))
                 (accordion-card #:header "Level Two"
                                 #:dark? #t
                                 (steps (list "Coach assigns a Player to be the " (i "Online") " Player")
                                        "Coach points to another Player"
                                        (list "Online Player says " (i "this") " Player's name and fact")
                                        "Repeat steps 2 and 3 several times"
                                        "Coach assigns a new Online Player"
                                        "Repeat steps 2 and 3 several times"
                                        "Repeat steps 5 and 6 multiple times"))
                 (accordion-card #:header "Level Three"
                                 #:dark? #t
                                 (steps "Coach assigns an Online Player"
                                        (list "Coach points to " (i "two") " different Players, one with each hand")
                                        (list "Online Player says the " (i "name") " of the Player that Coach is pointing to with their " (i "left") " hand")
                                        (list "Online Player says the " (i "fact") " of the Player that Coach is pointing to with their " (i "right") " hand")
                                        "Repeat steps 2-4 several times before assigning a new Online Player"
                                        "Repeat steps 2-5 multiple times")))
                (tips (list "Additional level options:"
                            (ul
                             (li "Designate a Player to take over the Coach's role as 'Pointer'.")
                             (li "Designate two 'Online' students.")
                             (li "Run an elimination round, where 'Online' students compete to stay in the circle.")
                             (li "Have the students come up with new favorite things.")
                             (li "Have the students mix up their positions in the circle.")
                             (li "Run two circles at the same time.  When students are eliminated from one, send them to the other."))))
                ))))


;look thru https://www.ultimatecampresource.com/ice-breakers/name-games/




