#lang at-exp racket

;TODO: Use these to make a bunch more games.
;  Various transformer games, different langs.
;  Tie with code the bot:
;    1) Bot is what does the transformation
;    2) Transformation is what controls the bot

(provide patterns-on-the-board-game
         transformers-game)

(require 
 website-js
 website-js/components/accordion-cards
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering
 (except-in 2htdp/image frame))


(define (encode mappings . imgs)
  (define h (apply hash (flatten (map reverse mappings))))

  (map (curry hash-ref h) (flatten imgs)))

(define (decode mappings . imgs)
  (define h (apply hash (flatten mappings)))

  (map (lambda (i) (hash-ref h i 
                             (if (list? i)
                               (map (curry decode mappings) i)
                               i))) 
       (flatten imgs)))

(define (deep-decode #:depth (d 1) mappings . imgs)
  (with-handlers ([exn:fail? (thunk* '())])
    (let ([next (decode mappings imgs)])
       (if (= 1 d)
         (list next)  
         (cons 
           next
           (deep-decode #:depth (sub1 d) mappings next))))))


(module+ test
  (require rackunit)

  (check-equal?
    (decode '((a b) (b c))
            '(a b c))
    '(b c c))
  

  ;This doesn't work, but it would be nice if we extended things in this direction.
  ;  Maybe use redex for that though.
  #;
  (check-equal?
    (decode '((a b) (b c))
            '(a (b c)))
    '(b (c c))))


(define (letter x)
  (overlay
    (text x 12 'yellow)
    (square 20 'solid 'black)))

(define (??)
  (letter "?"))



(define (patterns-on-the-board-game)

 (with-tags
  (list k2 middle-school high-school)
  (game-mode "Visual Pattern Recognition" 15
   "The Coach comes up with a pattern and the team tries to guess the completion"
   (game-info
    (supplies-list)
    (game-instructions
     (steps 
       "Coach writes the first few terms in some pattern."
       "Team tries to guess the completion(s)."))
    (tips 
       @p{
         @(write-img
            (beside
              (circle 10 'solid 'red)
              (circle 10 'solid 'green)
              (circle 10 'solid 'blue) 
              (circle 10 'solid 'red) 
              (circle 10 'solid 'green) 
              (??)))
       } 
       @p{
         @(write-img
           (above
            (beside
              (circle 10 'solid 'red)
              (circle 10 'solid 'green)
              (circle 10 'solid 'blue))
            (beside
              (circle 10 'solid 'yellow)
              (circle 10 'solid 'red) 
              (circle 10 'solid 'green))
            (beside
              (circle 10 'solid 'blue)
              (circle 10 'solid 'yellow) 
              (??))))
       } 
     )))))

(define (transformers-game #:rules (rules (list (list (circle '5 'solid 'red)
                                                      (letter "A"))
                                                (list (square '10 'solid 'red)
                                                      (letter "C"))
                                                (list (triangle '10 'solid 'red)
                                                      (letter "T"))))
                           #:goals (goals (list 
                                            (encode rules
                                                    (letter "C")
                                                    (letter "A") 
                                                    (letter "T")) 
                                            (encode rules
                                                    (letter "A")
                                                    (letter "T") 
                                                    (letter "T")
                                                    (letter "A") 
                                                    (letter "C"))
                                            (encode rules
                                                    (letter "T")
                                                    (letter "A") 
                                                    (letter "T")
                                                    (letter "A")))))

  (define (show-rule r)
    (li 
      (row
        (col class: "text-center" (write-img (first r))) 
        (col (i class: "fas fa-arrow-right"))
        (col class: "text-center" (write-img (second r))))))

  (define (show-goal g)
    (li
      (div
        (row
          (map (compose col write-img) g)))))

  (define (show-goal-and-answer g)
    (define f
      (compose li col write-img 
               (lambda (l) 
                 (if (= 1 (length l))
                   (first l) 
                   (apply beside l)))))
    (div 
      (f g)
      (ul
        (f (decode rules g)))
      (hr)))

  (with-tags
    (list k2 middle-school high-school)
    (game-mode "Transformers game" 15
               "Players decode messages by transforming them according to cryptic rules."
               (game-info
                 (supplies-list)
                 (game-instructions
                   (steps 
                     (div
                       "Write the following rules:"
                       (ul 
                         (map show-rule rules)))
                     
                     (div
                       "Write the following secret code:"
                       (ul
                         (show-goal (first goals))))

                     "Transform the secret code into its final form by using the transformation rules in order."

                     (when (not (empty? (rest goals)))
                       (div
                         "When complete, try these additional secret codes:"
                         (ul
                           (map show-goal (rest goals))))))
                   
                   (hr)

                   (accordion-card #:header "Click to see answers"
                     class: "bg-dark"
                     (ul (map show-goal-and-answer goals))))
                 (tips 
                   "Add more letters to the secret code."
                   "Have players independently encode different messages and swap them.")))))


