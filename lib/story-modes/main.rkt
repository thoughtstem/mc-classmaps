#lang at-exp racket

(provide coa-stories
         class-intro
         bug-hunter-fable
         overcome-the-unknown-fable
         energize-the-team-fable
         coach-story
         hello-world-story
         meta-story-one-word
         meta-story-reflect
         meta-story-deep-reflect
         meta-story-next-time
         meta-story-badges
         intro-jam
         coa-focus
         badge-story
         first-bug-story
         y2k-bug-story
         rethinking-bugs
         all-stories)

(require website/bootstrap
         "../base.rkt"
         "../tags/main.rkt"
         "../rendering.rkt")

;==== CLASS FRAME STORIES ==================

(define (coa-stories)
  (with-tags 
    (list fable multi)
    (story-mode "Code of Awesomeness Fables" 15
                "Introduce the Code of Awesomeness Codes with these fables."
                @story-text{Read the following stories and discuss:
                     @(mode->content-card 
                       #:fade? #f
                       (overcome-the-unknown-fable))
                          
                     @(mode->content-card 
                       #:fade? #f
                       (bug-hunter-fable))
                          
                     @(mode->content-card 
                       #:fade? #f
                       (energize-the-team-fable))})))

; individual CoA fables

(define (overcome-the-unknown-fable)
  (with-tags 
    (list fable)
    (story-mode "Overcome the Unknown Fable" 5
                "A Code of Awesomeness fable."
                (story-text "Once upon a time..."))))




(define (bug-hunter-fable)
  (with-tags (list fable)
    (story-mode "Be a Bug Hunter Fable" 5
                "A Code of Awesomeness fable."
                @story-text{Once, long ago, Woodpecker and Ostrich were competing to build the biggest house in the desert. They began in the Spring, knowing they would have to finish before the hot summer arrived, bringing wild winds and dangerous sandstorms.
                            
   Now, the branches they were building with occasionally housed a termite or two. Whenever @b{Woodpecker} found a termite while building her house, she stopped building to track it down. This made her house grow a little slower. Meanwhile @b{Ostrich} was scared that he would fall behind in the contest if he stopped too long, so he kept building and ignored the termites. His house grew quickly.

   Woodpecker and Ostrich worked for many days. Both houses grew bigger and bigger, but everyone could see that Ostrich was winning the contest. But the Spring wasn't over yet, and the houses weren't finished...

   Woodpecker and Ostrich worked for many, @i{many} days. Woodpecker's house was gaining on Ostrich's. Ostrich was spending less and less time @i{building} and more and more time @i{fixing} the crumbling walls the termites were eating. Meanwhile, Woodpecker's house grew at the the same, steady pace.

   Finally, the hot summer arrived. Woodpecker and Ostrich stayed cool in their equally huge houses. When the first big sandstorm blew through the desert, Woodpecker hid in her house, safe from the biting wind. Ostrich's house, however, collapsed with the first strong gust of wind.

   Woodpecker helped Ostrich out of the wreckage of his termite-ridden house and brought him to her own to shelter from the storm. Woodpecker insisted that Ostrich spend the summer in her house, and offered to help him rebuild his own, come Fall. She also offered to show Ostrich how to hunt down any termites they came across in the process.

  Ostrich gratefully accepted the help, and over that summer and fall, learned how to @b{be a bug hunter}. His new home was strong, sturdy, and bug-free. The two houses stood for years and years to come.


   @tips["Before you start, let the students pick the characters. You can these characteristics as guides:  Character A (Woodpecker) -- practical and level-headed. Character B (Ostrich) -- impulsive and anxious"
         "For younger students, show how the houses grow throughout the story -- ex. 'Woodpeckers house was THIS tall' and holding your hand at knee-height."]})))

(define (energize-the-team-fable)
  (with-tags (list fable)
    (story-mode "Energize the Team Fable" 5
                "A Code of Awesomeness fable."
                @story-text{Once upon a time...})))



(define (coach-story)
  (with-tags (list fable)
    (story-mode "Coach Story" 5
                "A chance to introduce yourself and some values of MetaCoders."
                (story-text "Tell your coach story..." ))))


(define (class-intro)
  (with-tags (list meta-classroom)
    (story-mode "Class Introduction Story" 3
                "Set up the goals and norms for the course."
                @story-text{Introduce the language you will be learning in class.
   Introduce the gamification elements you will be using in class (badges, dollars, market, etc).})))


(define (intro-jam)
  (with-tags (list meta-classroom)
    (story-mode "Final Jam Rules & Resources" 10
                "Prepare to JAM OUT"
                @story-text{Coach introduces rule, resources, and sets students up for success in their final jam...})))

(define (coa-focus)
  (with-tags (list meta-classroom fable)
    (story-mode "Code of Awesomeness Focus" 5
                "Review all Codes and choose one to focus in on for the day."
                @story-text{Review all Code of Awesomeness codes and mottos. Coach or team chooses one in particular to focus on today...})))

(define (badge-story)
  (with-tags (list meta-classroom badges)
    (story-mode "Badge Story" 5
                "The importance of badges and what they mean, in prep for awarding the first badge(s)!"
                @story-text{A more in-depth look at what badges represent...})))


;======== META STORIES/REFLECTIONS =========

(define (meta-story-one-word)
  (with-tags (list reflection)
    (story-mode "Meta Story: One Word" 5
                "A speedy mini-reflection where each student sums up their experience in one word."
                (story-text "Each student shares one word about their experience in class that day..."))))

(define (meta-story-reflect (topic "what the team did and learned today."))
  (with-tags (list reflection)
    (story-mode "Meta Story: Reflection" 5
                "A chance to practice those metacognition skills."
                @story-text{@~a{Briefly reflect on @topic ...}})))

(define (meta-story-deep-reflect (topic "what the team did and learned today."))
  (with-tags (list reflection)
    (story-mode "Meta Story: Deep Reflection" 10
                "A deeper dive into the subjects, challenges, and skill-building that happened in today's class."
                @story-text{Reflect on @topic, giving the time and guidance for deeper, more meaningful reflection.})))

;TODO: functionalize this to add what to say about next week?
(define (meta-story-next-time)
  (with-tags (list meta-classroom)
    (story-mode "Meta Story: Next Time..." 3
                "A chance to remind students of something for upcoming classes."
                @story-text{Coach reminds students of something to do/bring/remember about next class...})))

(define (meta-story-badges)
  (with-tags (list meta-classroom)
    (story-mode "Meta Story: Badges" 5
                "Badge ceremony!"
                @story-text{Coach awards badges to students who have earned it and reminds others when they will earn theirs...})))

;===== HISTORY STORIES ===

(define (hello-world-story)
  (with-tags (list historical cultural)
    (story-mode "Hello World Story" 5
                "About the phrase 'Hello World' in the computer science context"
                (story-text "Tell the story of 'Hello World' and why it is the name of the first kata."))))

(define (first-bug-story)
  (with-tags (list historical)
    (story-mode "The First Computer Bug..." 5
                "The story of the moth in Mark II"
                @story-text{Story of moth in Mark II -- not Grace Hopper, not the first use of bug in engineering, but still a cool part of computer history.}
                ;see https://en.wikipedia.org/wiki/Software_bug#History
                )))

(define (y2k-bug-story)
  (with-tags (list historical)
    (story-mode "The Y2K Bug" 5
                "Story of the most famous bug that never was -- Y2K"
                @story-text{We start in the ancient times -- 1999...})))

;===== METACOGNATIVE STORIES =====


(define (rethinking-bugs)
  (with-tags (list debugging)
    (story-mode "Where the Bug Lives..." 15
                "What really causes bugs -- the computer or our OWN BRAIN."
                @story-text{Story and discussion about bugs and where they come from -- not the computers, but our own thinking and understanding (or lack-there-of) of the code.})))




(define (all-stories)
  (sort
    (list
     ;class frame stories
     (coach-story)
     (class-intro)
     (coa-stories)
     (bug-hunter-fable)
     (overcome-the-unknown-fable)
     (energize-the-team-fable)
     (intro-jam)
     (coa-focus)
     (badge-story)
     ;meta stories
     (meta-story-one-word)
     (meta-story-reflect)
     (meta-story-deep-reflect)
     (meta-story-next-time)
     (meta-story-badges)
     ;history
     (hello-world-story)
     (first-bug-story)
     (y2k-bug-story)
     ;metacognitive stories
     (rethinking-bugs))
     string<?
     #:key story-mode-name ))

(module+ test
  (require rackunit)

  (all-stories))

