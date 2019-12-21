#lang at-exp racket

(provide whaddya-call-that
         whaddya-call-that-partners
         find-the-portkey
         language-games)

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt")

;Language standardization:
; use TEAM instead of CLASS
; use Player instead of STUDENT



;====== LANG CREATION GAMES =====

(define (whaddya-call-that)
  (with-tags
      (list language teamwork communication unplugged 3rd-5th middle-school high-school)
  (game-mode "Whaddya Call That?!" 20
             "Team works together to create a new language to help them draw a picture as described by Coach."
             (game-info
              (supplies-list "whiteboard or other way to display drawings to the whole group"
                             "writing utensils")
              (game-instructions
               (steps "Team works together to create words for shape combinations (defining) then a leader instructs them to draw a picture (only they can see) using those words."
                      "This game should include a few end pictures and the shapes to define them.")
               (h5 "Shapes and Pictures to Try!")
               )))))

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









(define (language-games)
  (list
   (whaddya-call-that)
   (whaddya-call-that-partners)
   (find-the-portkey)))


(module+ test
  (require rackunit)

  (language-games))
