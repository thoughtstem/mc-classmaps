#lang at-exp racket

(provide bug-hunter-fable) 

(require 
 website/bootstrap
 website-js/components/accordion-cards
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

(module+ test
  (require rackunit)
  
  (bug-hunter-fable))



(define (bug-hunter-fable)
  (with-tags (list fable code-of-awesomeness debugging meta-classroom)
    (story-mode "Be a Bug Hunter Fable" 10
                "A Code of Awesomeness fable about two animals who have different strategies for dealing with bugs."
                (story-text (bug-hunter-fable:tips)
                            (embedded-stories (bug-hunter-fable:highlights)
                                              (bug-hunter-fable:prose))
                            
                            (bug-hunter-fable:questions))
                )))

(define (bug-hunter-fable:tips)
  (tips (list "Before you start, you can let the students pick the characters. Use these characteristics as guides:"
              (ul (li "(Woodpecker): practical and level-headed.")
                  (li "(Ostrich): impulsive and anxious")))
        "For younger students, physically indicate how the houses grow throughout the story: ex. 'Woodpeckers house was THIS tall' and holding your hand at knee-height."))

(define (bug-hunter-fable:highlights)
  (story-mode "Be a Bug Hunter Fable: Story at a Glance" 10
              "Plot Points for ad-libbed telling of the Be a Bug Hunter fable."
              (story-text
               (steps (list "There are two friends, " (b "Woodpecker") " and " (b "Ostrich")
                            ", who each want to build the biggest house before summer.")
                      (list "Sometimes there are " (b "termites") " in the wood that both animals use to build:"
                            (ul (li "Whenever " (b "Woodpecker") " finds a termite, she stops building her house to get rid of them.")
                                (li "Whenever " (b "Ostrich") " finds a termite, he ignores them so he can spend all his time building.")))
                      (list "For a while, " (b "Ostrich's") " house is growing bigger, faster than "
                            (b "Woodpecker's") ".")
                      (list "But then, the termites eat away at " (b "Ostrich's") " house and he is spending more time fixing than building.")
                      (list (b "Woodpecker's") " house keeps growing steadily.")
                      (list "When summer comes, both houses are huge.")
                      (list "But when the first summer storm comes, " (b "Ostrich's") " house collapses!")
                      (list (b "Woodpecker") " helps " (b "Ostrich") " to build a termite-free house by teaching him to " (b "be a bug hunter!"))))))

(define (bug-hunter-fable:prose)
      (story-mode "Be a Bug Hunter Fable: Full Text" 10
              "A Code of Awesomeness fable about two animals who have different strategies for dealing with bugs."
              @story-text{
              Once, long ago, Woodpecker and Ostrich were competing to build the biggest house in the desert. They began in the Spring, knowing they would have to finish before the hot summer arrived, bringing wild winds and dangerous sandstorms.
                   
 Now, the branches they were building with occasionally housed a termite or two. Whenever @b{Woodpecker} found a termite while building her house, she stopped building to track it down. This meant her house was not growing as quickly as Ostrich's. Meanwhile @b{Ostrich} was scared that he would fall behind in the contest if he stopped too long, so he kept building and ignored the termites. His house grew quickly.
 
 Woodpecker and Ostrich worked for many days. Both houses grew bigger and bigger, but everyone could see that Ostrich was winning the contest. But the Spring wasn't over yet, and the houses weren't finished...

   Woodpecker and Ostrich worked for many, @i{many} days. Woodpecker's house was gaining on Ostrich's. Ostrich was spending less and less time @i{building} and more and more time @i{fixing} the crumbling walls the termites were eating. Meanwhile, Woodpecker's house grew at the the same, steady pace.

   Finally, the hot summer arrived. Woodpecker and Ostrich stayed cool in their equally huge houses. When the first big sandstorm blew through the desert, Woodpecker hid in her house, safe from the biting wind. Ostrich's house, however, collapsed with the first strong gust of wind.

   Woodpecker helped Ostrich out of the wreckage of his termite-ridden house and brought him to her own to shelter from the storm. Woodpecker insisted that Ostrich spend the summer in her house, and offered to help him rebuild his own, come Fall. She also offered to show Ostrich how to hunt down any termites they came across in the process.

  Ostrich gratefully accepted the help, and over that summer and fall, learned how to @b{be a bug hunter}. His new home was strong, sturdy, and bug-free. The two houses stood for years and years to come.
       }))

(define (bug-hunter-fable:questions)
  (question-section
   (comprehension-questions
    "How did Woodpecker and Ostrich approach the same problem differently?"
    "Which animal had the better strategy? Why?")
   (creativity-questions
    "How does this story relate to coding?"
    "What specific coding habits could you adopt to code more like the Woodpecker?"
    "What specific coding habits could you get rid of to code less like the Ostrich?"
    "Why did Woodpecker help Ostrich?"
    "How can we help each other be more like Woodpecker?")))

