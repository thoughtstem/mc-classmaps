#lang at-exp racket

(provide coa-mottos-creation
         final-jam
         scoring-jam
         market-time
         
         class-mechanics-games)

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt")

;Language standardization:
; use TEAM instead of CLASS
; use Player instead of STUDENT




;===== CLASS LAUNCH GAMES =====

(define (coa-mottos-creation)
  (game-mode "Code of Awesomeness Mottos" 10
             "Customize the Code of Awesomeness by creating a unique Motto for one or multiple Codes."
             (game-info
              (supplies-list "Optional: Whiteboard or other writing materials for notes")
              (game-instructions
               "Make sure you have introduced whatever Code(s) you plan to create a Motto for with a story and discussion PRIOR to this game!"
               (h5 "Version One: Quick and Easy")
               (steps "Coach chooses a specific Code to create a Motto for"
                      "Coach explains what a Code Motto is -- your team's very own response to a Code, that is fun, personal, and clarifies what that Code means to the team"
                      "Coach introduces three options for a Motto (see Example Mottos below)"
                      "Team votes, winning Motto is chosen by majority"
                      "Practice Code/Motto Call/Response several times"
                      "Repeat for additional Code(s) as desired")
               (h5 "Version Two: Team Brainstorm")
               (steps "Coach chooses a specific Code to create a Motto for"
                      "Coach explains what a Code Motto is -- your team's very own response to a Code, that is fun, personal, and clarifies what that Code means to the team"
                      "Coach introduces a couple Motto options (see Example Mottos below)"
                      "Coach sets timer for 3 minutes"
                      "Players brainstorm additional Motto options"
                      "Coach or designated Player notes options"
                      "Team votes on all options, winning Motto is chosen by majority"
                      "Practice Code/Motto Call/Response several times"
                      "Repeat for additional Code(s) as desired")
               (h5 "Version Three: Team Brainstorm for Large Teams")
               "Follow the same steps as Version Two, but break the Team into smaller groups prior to the brainstorming stage. Each group must decide on ONE option to present to the group. Entire Team votes on all options."
               (h5 "Example Mottos")
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
                           "Be a BOSS!"))))
              (tips "Some Players will have their heart set on a Motto that is not chosen. Prepare to reassure Players that are disappointed -- \"There were lots of cool options, I'm sorry yours didn't win\" \"It's about the whole team, not just what you want, and this was the one the team chose.\" \"It's okay! There are more Codes and Mottos to come!\""
                    "When leading a breainstorm, you may want to combine options or narrow down the list prior to voting, to simplify the process."))))


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
