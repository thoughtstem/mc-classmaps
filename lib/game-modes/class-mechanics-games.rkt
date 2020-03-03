#lang at-exp racket

(provide coa-mottos-creation
         final-jam
         scoring-jam
         market-time
         
         class-mechanics-games)

(require website/bootstrap
         website-js/components/accordion-cards
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt")

;Language standardization:
; use TEAM instead of CLASS
; use Player instead of STUDENT




;===== CLASS LAUNCH GAMES =====

(define (coa-mottos-creation)
  (with-tags
      (list unplugged)
  (game-mode "Code of Awesomeness Mottos" 10
             "Customize the Code of Awesomeness by creating a unique Motto for one or multiple Codes."
             (game-info
              #:summary-goals (summary-and-goals "Foster a personal connection to the Code of Awesomeness by creating a unique motto or callback for each code."
                                                 (list "Personalize the lessons in a Code"
                                                       "Create a shorthand for those connections through a simple phrase"
                                                       "Practice teamwork, communication and compromise"))
              (supplies-list "Optional: Whiteboard or other writing materials for notes")
              (game-instructions
               "Make sure you have introduced whatever Code(s) you plan to create a Motto for with a story and discussion PRIOR to this game!"

               @b{GOALS of Motto Creation:}
               @ul{@li{Students co-create a linguistic tool that you can employ throughout the class, whenever you need to nudge students to apply certain values -- i.e. tenacity (rather than fear) in debugging, eagerness (rather than avoidance) when it comes to unknown concepts, and so on.  This is also a great customized attention-getter.}
                   @li{Students create a personal attachment to the Code of Awesomeness by creating a callback that engages them and their particular interests/sense of humor/personal story.}}
  
               (accordion-card #:header "Version One: Quick and Easy"
                               #:dark? #t
                               (steps "Coach chooses a specific Code to create a Motto for"
                                      "Coach explains what a Code Motto is -- your team's very own response to a Code, that is fun, personal, and clarifies what that Code means to the team"
                                      "Coach introduces three options for a Motto (see Example Mottos below)"
                                      "Team votes, winning Motto is chosen by majority"
                                      "Practice Code/Motto Call/Response several times"
                                      "Repeat for additional Code(s) as desired"))
               (accordion-card #:header "Version Two: Team Brainstorm"
                               #:dark? #t
                               (steps "Coach chooses a specific Code to create a Motto for"
                                      "Coach explains what a Code Motto is -- your team's very own response to a Code, that is fun, personal, and clarifies what that Code means to the team"
                                      "Coach introduces a couple Motto options (see Example Mottos below)"
                                      "Coach sets timer for 3 minutes"
                                      "Players brainstorm additional Motto options"
                                      "Coach or designated Player notes options"
                                      "Team votes on all options, winning Motto is chosen by majority"
                                      "Practice Code/Motto Call/Response several times"
                                      "Repeat for additional Code(s) as desired"))
               (accordion-card #:header "Version Three: Team Brainstorm for Large Teams"
                               #:dark? #t
               "Follow the same steps as Version Two, but break the Team into smaller groups prior to the brainstorming stage. Each group must decide on ONE option to present to the group. Entire Team votes on all options.")
               (accordion-card #:header "Example Mottos"
                               #:dark? #t
                               (ul
                                (li "Overcome the Unknown"
                                    (steps "CHARGE!"
                                           "To infinity and beyond!"
                                           "To bodly go where no one's gone before!"
                                           "Into the UNKNOOOWNNN! (ala Frozen 2)"))
                                (li "Be a Bug Hunter"
                                    (steps "SMUSH!"
                                           "Gotta catch 'em all!"
                                           "Bug found? Don't frown!"))
                                (li "Teach the Team"
                                    (steps "Coders Assemble!"
                                           "Teamwork makes the dream work!"
                                           "Be a BOSS!")))))
              (tips "Some Players will have their heart set on a Motto that is not chosen. Prepare to reassure Players that are disappointed -- \"There were lots of cool options, I'm sorry yours didn't win\" \"It's about the whole team, not just what you want, and this was the one the team chose.\" \"It's okay! There are more Codes and Mottos to come!\""
                    "When leading a brainstorm, you may want to combine options or narrow down the list prior to voting, to simplify the process.")))))


;====== FINAL JAM =======

(define (final-jam)
  (with-tags (list jam coding teamwork partners review competitive-option review k2 3rd-5th middle-school high-school)
  (game-mode "Final Jam!" 20
             "It's the Final JAM-down!"
             (game-info
              #:summary-goals (summary-and-goals
                               "Players pair program to code in their learned language, practicing all the skills they have learned in this course."
                               (list "This feels like a different, special day"
                                     "Players write working code"
                                     "Players feel accomplished and proud of what they have done and learned"))
              (supplies-list "computers - 1 per pair plus some spare"
                             "code card deck"
                             "index cards"
                             "writing utencils"
                             "stickers")
              (game-instructions
               
               (accordion-card #:header "Pre-Jam: Bonus Point Cards"
                               #:dark? #t
                               (steps  "Players pair up, if not already partnered"
                                       "Judge hands out index cards"
                                       "Partners create their own Team Name; write it on the card"
                                       "Partners keep card nearby, to collect bonus point stickers/total point stickers"))
               
               (accordion-card #:header "3rd and Up Pre-Jam: Code Card Prompts"
                               #:dark? #t
                               (steps (list "Judge hands out three random code cards to each Pair " (b "code-side-down"))
                                      (list "Judge reiterates: Players can "(b"not") " flip card without paying the cost in MetaMoney")
                                      "Judge reiterates: Players can use these cards to insprire their coding, not required"))

               (accordion-card #:dark? #t
                               #:header "Final Jam: K-2nd"
               (steps "Judge starts a timer, set for the length of the Jam"
                      "Judge sets a second timer, for 3 minutes"
                      (list "Judge gives each pair a small stack of code cards, code-side-down"
                            (ul (li "If using ratchet, make sure lang line matches the cards given")
                                (li "Judge can swap out langs for new cards occasionally through the Jam")))
                      "Players begin, coding the first card!"
                      "One partner types at a time"
                      "When 3 min timer beeps, Partners swap \"drivers\"/typists"
                      "Judge restarts 3 min timer each time"
                      "Judge awards stickers for every code card completed"
                      (list "Judge supervises and:"
                            (ul (li "Refreshes stacks of code cards, when running low")
                                (li "Recieves MetaMoney for purchases of resources")
                                (li "Adjusts prices for resources higher or lower to balance challenge level")
                                (li "Adds new resources if needed")
                                (li "Reminds players to swap drivers/typists")
                                (li "Gives frequent time warnings")))))
               
               (accordion-card #:dark? #t
                               #:header "Final Jam: 3rd and up"
               (steps "Judge starts a timer, set for the length of the Jam"
                      "Judge sets a second timer, for 3 minutes"
                      "Players begin!"
                      "One partner types at a time"
                      "When 3 min timer beeps, Partners swap \"drivers\"/typists"
                      "Judge restarts 3 min timer each time"
                      (list "Judge supervises and:"
                            (ul (li "Awards bonus points"
                                    (li "Takes away bonus points, if needed")
                                    (li "Recieves MetaMoney for purchases of resources")
                                    (li "Adjusts prices for resources higher or lower to balance challenge level")
                                    (li "Adds new resources if needed")
                                    (li "Reminds players to swap drivers/typists")
                                    (li "Gives frequent time warnings")))))) )
              
              (tips (list "Additional Resources to add may include:"
                          (ul (li "An Asset Library -- a list of availble sprites/assets on a computer or written elsewhere")
                 (li "A Definitions Library -- a list of available functions/definitions on a computer or written elsewhere")
                 (li "A Code Guide -- an outline of common code structure, such as definitions. Shown to all on projector or available for checking in")))
                    "All players should end with some running code. Assist as needed, within the given rules, even if you have to make it free to ask Coach assistance for the last 2 minutes."
                    "You should take a strong tone in the beginning regarding The Judge Will Not Help.  But if students are struggling during the Game Jam, you can (of course) be helpful in giving hints."
                    "K-2nd: create extra challenges for students to complete beyond the code cards as well, if needed!")))))




(define (scoring-jam)
  (with-tags (list jam partners competitive-option k2 3rd-5th middle-school high-school)
  (game-mode "Final Jam Scoring & Awarding" 10
             "Players score their own creation using the following formula with the Coach's guidance."
             (game-info
              #:summary-goals (summary-and-goals
                               "Players use a formula to score their own games, with Coach assistance. Coach awards MetaMoney!"
                               (list "Focus on success, less on competition"
                                     "Players feel accomplished!"))
              (supplies-list "3rd and up: completed, running code"
                             "K-2nd: total number of cards completed"
                             "index card (same as bonus/team name cards)"
                             "writing utencils"
                             "MetaMoney"
                             "OPTIONAL: whiteboard/projector for displaying formula")
              (game-instructions
               (accordion-card #:dark? #t
                               #:header "Scoring for 3rd and up"
                               (h5 "Standard Formula:")
                               (gm-inline-pre "GAME-SCORE = (BONUSES * 5) + (NUMBER-OF-PARENTHESES + NUMBER-OF-KEYWORDS)")
                               (br)
                               (i "You are welcome to adjust this formula as needed (especially the Bonus * 5 for groups where you want to limit multiplication). However, it is suggested to adjust the point:dollar ratio instead.")
                               (br)
                               (steps "If possible: Coach displays entire formula and explains it"
                                      (list "Coach guides Players through steps one at a time:"
                                            (steps "Count total parens, write number down"
                                                   "Count total keywords, write number down"
                                                   "Add parens and keywords together"
                                                   "Count total bonuses, write number down"
                                                   "Multiply bonuses by 5"
                                                   "Add bonus total and paren/keyword total"))
                                      "Coach decides point:dollar ratio based on point range (see below)"
                                      "Coach briefly proofs point total, awards MetaMoney to each pair"))
               (accordion-card #:dark? #t
                               #:header "Scoring for K to 2nd"
                               (h5 "Standard Formula:")
                               (gm-inline-pre "GAME-SCORE = TOTAL-CARDS-COMPLETED")
                               (steps "Coach helps Players count up total stickers"
                                      "Coach decides point:dollar ratio based on point range (see below)"
                                      "Coach briefly proofs point total, awards MetaMoney to each pair"))
               (accordion-card #:dark? #t
                               #:header "Deciding Point:Dollar Ratio"
                               
                               "Players should earn roughly between 15 and 25 dollars of MetaMoney EACH during the Jam. Too little, and it feels disappointing. Too much, and you have just made Market a very difficult time for yourself!"
                               "Adjust how much MetaMoney students receive by customizing the point:dollar ratio:"
                               (steps "Take a look at Players' point totals to get an approximate average"
                                      "Do some vague mental algebra: POINT-AVERAGE / ?? = ~20"
                                      "Announce the point:dollar ratio to Players")
                               (b "Examples:")
                               (ul (li "Pair A has 55 points. Pair B has 43 points. Pair C has 68 points.")
                                   (li "Approx average: 55")
                                   (li "55 / 3 = ~18")
                                   (li "Ratio is 3 points:1 dollar, always rounding up.")
                                   (li "Pair A gets $19 each. Pair B gets $15 each . Pair C gets $23 each."))
                               (ul (li "Pair A has 130 points. Pair B has 97 points. Pair C has 80 points. Pair D has 150 points.")
                                   (li "Approx average: 125")
                                   (li "125 / 6 = ~20")
                                   (li "Pair A gets $22 each. Pair B gets $17 each. Pair C gets $14 each. Pair D gets $25 each."))
                                   (ul (li (b "Low point outlier:"))
                                       (li "Pair A has 70. Pair B has 96. But Pair C only has 30.")
                                       (li "You choose to average at 80")
                                       (li "80 / 4 = 20")
                                       (li "Pair A gets $18 each. Pair B gets $24 each.")
                                       (li "Pair C gets $8 each; but when you see they are disappointed, you quietly award them an extra $5 each for the excellent debugging you saw them do."))
                                   (ul (li (b "High point outlier:"))
                                       (li "Pair A has 25 points. Pair B has 36 points. But Pair C has 89 points.")
                                       (li "You choose to average at 30")
                                       (li "30 / 2 = 15")
                                       (li "Pair A gets $13 each. Pair B has $18 each.")
                                       (li "For Pair C, you decide there is a $25 max, tell the Pair, and give each $25."))
                               (b "Additional Tips:")
                               (ul (li "Be sure to consider the amount of money Players SPEND during the jam as well, when calculating your ratio.")
                                   (li "You can also decide if pairs each get the total MetaMoney, or they split it. Either way, they should still end up with roughly $15-25.")
                                   (li "If you have a pair or two with a " (b "significantly lower total") " and you felt their performance was still worth more than the dollars they would earn (they were doing well, just typing slower, had more bugs, just not as skilled yet as the rest of the group), you can either try to see it coming and balance with extra bonus points during Jam, or post-Jam give them extra bonus dollars for great debugging/great teamwork/etc. Note that if a pair was misbehaving or otherwise not earning points through their chosen behavior, it is okay if they earn less!")
                                   (li "If you have a pair with a " (b "significantly higher total") " that will bankrupt the Market you can instate a dollar max -- no matter how many points you earn over __ you still just get the max dollars.")))
               (tips "Mind the urge to compare points -- in many groups this is fun, but some groups may not be able to handle this competitive comparison and you will have bring attention back to everyone's individual success!"))))))



; ===== MISC ======

(define (market-time)
  (game-mode "Market" 10
             "A chance to spend that MetaMoney and get cool prizes!"
             (game-info
              (supplies-list "A Market"
                             "Market Cards"
                             "MetaMoney (for change)")
              (game-instructions

               (setup "Lay out Market Cards and put actual Market Stuff out of reach of Players")
               (steps "Coach sets Market rules (see Suggestions below)"
                      "Players visit Market in small groups"
                      "One at a time, Players choose from Market Cards any purchases they wish to make"
                      "Coach retrieves the purchase and exchanges for Player's MetaMoney"
                      "Once a Player has finished at Market, they go back to their seat or to other set spot (ex. rug for Meta Story)")
               (accordion-card #:header "Suggested Market Rules"
                               #:dark? #t
                               (steps "Wait to be called over or released to come to Market."
                                      "You must clean up your area/close your files/wrap up your mouse/etc before you are called over to Market."
                                      "Only unfolded MetaMoney accepted at the Market"
                                      "Wait in line until your turn"
                                      "Market prizes must remain unopened until after class"))
               
               )
              (tips "Market is a privilege, not a right (to quote everyone's parent) -- feel free to cancel Market if Players cannot follow Market Rules or other expectations of the day."
                    "Add any rules you need to keep the experience a positive, sane one for everyone (epecially you!)"
                     "Note that time greatly depends on number of students, so plan accordingly."
                    "Think of Market like an arcade's ticket-shop -- all the merch is behind the glass and you only get it after you pay!"))))






(define (class-mechanics-games)
  (list
   (coa-mottos-creation)
   (final-jam)
   (scoring-jam)
   (market-time)
   ))


(module+ test
  (require rackunit)

  (class-mechanics-games))
