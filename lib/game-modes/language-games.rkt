#lang at-exp racket

(provide whaddya-call-that
         whaddya-call-that-partners
         find-the-portkey
         person-bot-language-focus
         person-bot:point
         person-bot:shapes-and-size
         person-bot:meta
         language-games)

(require website/bootstrap
         website-js/components/accordion-cards
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt"
         (except-in 2htdp/image frame))

;Language standardization:
; use TEAM instead of CLASS
; use Player instead of STUDENT



;====== LANG CREATION GAMES =====

(define (whaddya-call-that)
  (with-tags
      (list language teamwork communication unplugged 3rd-5th middle-school high-school)
  (game-mode "Whaddya Call That?!" 20
             "Team works together to create their own language for unique shapes before using that language to communicate a picture to draw."
             (game-info
              (supplies-list "whiteboard or other way to display drawings to the whole group"
                             "paper for each Player"
                             "writing utensils")
              (game-instructions
               (setup "Coach prepares or chooses a premade final picture and constructor shapes (see Samples below)")
               (steps "Coach draws all the 'constructor shapes' where everyone can see them (ex. a whiteboard)"
                      "Team works together to create a one-word name for each constructor shape, Coach notes the names"
                      "Coach verbally describes a picture, using the defined words for the constructor shapes" 
                      "Players draw the picture on their own papers"
                      "Once all players are finished, Coach displays the correct picture"
                      "Team can compare and share their results")
               
               (h5 "An Example with Pictures")
               (steps (write-image (bitmap "../images/wct-game-1.png"))
                      (write-image (bitmap "../images/wct-game-2.png"))
                      "Coach says: \"Draw a Pointy at the bottom of your page. Put a small Blorp on top of the Pointy. Then, put a Steve on the very top.\""
                      (write-image (bitmap "../images/wct-game-3.png")))
               
               (h5 "Sample Pictures")
               (ul (li (write-image (bitmap "../images/wct-game-A.png")))
                   (li (write-image (bitmap "../images/wct-game-B.png")))
                   (li (write-image (bitmap "../images/wct-game-C.png")))
                   (li (write-image (bitmap "../images/wct-game-D.png")))
                   (li (write-image (bitmap "../images/wct-game-E.png"))))
               
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



;==== Person Bot with Language variations ====

(define (person-bot-language-focus
          #:name (name "Person-Bot: Define Movement")
          #:operations (operations (list "\"Move Forward\"" 
                                         "\"Turn Right\""))
          #:meanings   (meanings (list "Bot moves one normal step forward" 
                                       "Bot turns 90 degrees"))
          #:goals      (goals (list "Get Bot from point A to point B"))
          #:additional-tips (add-tips #f))

  (define (op o m)
    (ul (li (b "Input: ") o) 
        (li (b "Output: ") m)))

  (define original-tips
    (list "Player-Bots may need help only following the exact defined operations  -- not using their \"human brain\" to automatically assume what the Team means or try to make it harder on the Team!"
          "If the Team is having trouble communicating 1 operation at a time, designate a Master Coder responsible for relaying the Team's instructions (not just their own!) to the Bot. Bot must only listen to the Master Coder."
          "Be sure to switch out the Bot often."
          "Variation: Pick two Bots and two Goals. Split into 2 Teams who code their bot (in parallel) to achieve the same or different goal(s)."
          "After a few rounds, work together to define new operations."))

  (define all-tips
    (if add-tips
        (append original-tips
                add-tips)
        original-tips))

 (with-tags
  (list unplugged language competitive-option teamwork k2 3rd-5th)
  (game-mode name 15
   "Team defines a set of operations before working together to 'code' the Coach or a Player like a Bot to achieve a goal -- only using their defined language."
   (game-info
    (supplies-list)
    (game-instructions
     (ol
      (li (div
           (div
            "Coach introduces the following operations and what they mean:" 
            (ul
             (map op operations meanings)))))
      (li "Coach shows examples")
      (li "Coach picks a Bot -- often the Coach themselves for the first round")
      (li "Team codes the Bot to achieve the following goal(s), using only the defined operations:"
          (ul
           (map li goals)))))
    (apply tips all-tips)))))


(define (person-bot:point)
  (person-bot-language-focus
   #:name "Person-Bot: Define Point"
   #:operations (list "Whole Team shows thumbs up"
                      "Whole Team points left/right/forward/backward")
   #:meanings (list "Bot starts moving at a steady pace"
                    "Bot moves towards the pointed direction")
   #:goals (list "Get from point A to point B")
   #:additional-tips (list "Make this a totally silent game for an extra challenge."
                           "Change the level of consensus required to make this game easier -- a majority of Players showing the same signal in enough to trigger movement form the Bot."
                           "Variation: Players circle up and the Bot is in the center of the circle. Operations only consist of Thumbs up -> move forward, Point to Bot's Left -> turn to the left, Point to the Bot's Right -> turn to the right. When mixed signals or no signal is shown, Bot stops all movement. The Team then works around the whole circle to instruct and pass on the Bot to other Players around the circle until Bot reaches point B.")))


(define (person-bot:shapes-and-size)
  (person-bot-language-focus
    #:name "Person-Bot: Define Shapes and Sizes"
    #:operations (list "\"Draw a Circle\" and holds up hands to indicate size"
                       "\"Draw a Square\" and holds up hands to indicate size"
                       "\"Draw a Triangle\" and holds up hands to indicate size"
                       "\"Move pen [Right/Left/Up/Down]\" and holds up hands to indicate distance")
    #:meanings (list "Bot draws a circle of the indicated size"
                     "Bot draws a square of the indicated size"
                     "Bot draws a triangle of the indicated size"
                     "Bot moves pen in the indicated direction in the indicated distance") 
    #:goals  (list "Draw a tree" "Draw a house"  "Draw a cat" 
                   @p{Draw this shape @(br) 
                      @(write-img (above (circle 40 'solid 'red)
                                         (circle 20 'solid 'red)
                                         (beside (triangle 20 'solid 'red) (triangle 20 'solid 'red))))})
    #:additional-tips (list "Partner up to play this game -- give each pair paper and pen to try this together, after a couple example rounds all together."
                            "Send the Bot out of the room when the Goal is being chosen for an extra challenge/test of the skill of the Team.")))

(define (person-bot:meta)
  (person-bot-language-focus
    #:name "Person-Bot: Gone Meta"
    #:operations (list "\"Bot #1 Boink\""
                       "\"Bot #1 Yoink\""
                       "\"Bot #2 walk forward\""
                       "\"Bot #2 turn right\"")
    #:meanings (list "Bot #1 says \"Bot #2 walk forward\""
                     "Bot #1 says \"Bot #2 turn right\""
                     "Bot #2 walks one normal step forward"
                     "Bot #2 turns 90 degrees to the right")
    #:goals  (list "Get Bot #2 from point A to point B")))







(define (language-games)
  (list
   (whaddya-call-that)
   (whaddya-call-that-partners)
   (find-the-portkey)
   (person-bot-language-focus)
   (person-bot:point)
   (person-bot:shapes-and-size)
   (person-bot:meta)))


(module+ test
  (require rackunit)

  (language-games))
