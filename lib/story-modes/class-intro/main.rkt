#lang at-exp racket

(provide class-intro)

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

;==== Class Intro ====

(define (class-intro)
  (with-tags (list meta-classroom)
    (story-mode "Course Introduction" 5
                "Introduce the course concepts and goals: including language, gamification, and learning how to learn!"
                (story-text (class-intro:tips)
                            (embedded-stories (class-intro:highlights)
                                              (class-intro:prose))
                            (class-intro:questions-1)
                            (class-intro:questions-2)))))

(define (class-intro:highlights)
  (with-tags (list meta-classroom)
    (story-mode "Course Introduction: Story at a Glance" 5
                "Plot points for ad-libbed telling of the Course Introduction fable."
                @story-text{
 @ol{@li{In this class we will learn about:
         @ul{@li{Coding}
             @li{Learning}}}
     @li{Code is a language, like English. The language we are learning is _______.
         @ul{@li{(Include features of the language/what you will be learning)}}}
     @li{Like learning anything, there will be easy and hard parts. As we learn coding remember it’s like learning language - easy and hard but with @i{lots} of practice, we can become fluent and code like we speak -- effortlessly!}
     @li{You will earn @b{badges} as you learn in this class!
         @ul{@li{(Introduce other gamification elements such as: game jam, dollars, market, etc.)}}}}})))

(define (class-intro:prose)
  (with-tags (list meta-classroom)
    (story-mode "Course Introduction: Full Text" 5
                "Set up the big-picture goals and norms for the course."

                @story-text{
                  As with all MetaCoders classes, we're here to get better at two things:

                  @ul{
                    @li{Coding}
                    @li{Learning}
                  }
                  In order to practice either one of those, we need a language to learn.  That way, we can learn that language -- and (more importantly) we can learn @i{how to learn} languages.

                  In this class, we're going to be using a language named @coach-fills-in{#lang _______}.   I've been learning this language myself, and I want to tell you about a few of its interesting features.

                  @coach-fills-in{Mention one or two features of the language.}

                  As with any language, there are easy things about it.  And there are hard things about it.  But we're going to work together as a class to find things that are just right -- not to easy, and not too hard.  That way we can increase our brains' abilities to read and write in that new language.  

                  @(class-intro:questions-1)

                  Lastly, this class is going to involve challenging ourselves with various games.  For some of those games, I'll be giving out rewards and prizes!  
                  
                  @coach-fills-in{Any additional information about your intended gamification in this class.}

                  Also, the class as a whole is a kind of like a game -- because you'll be getting @b{badges} every few weeks just for showing up and working hard.  Remember that 100% of winning is showing up. 

                  @(class-intro:questions-2)
                  })))

(define (class-intro:questions-1)
  (question-section
   (creativity-questions
    "Who has learned a foreign language before?"
    "Who can tell me some good strategies for learning a new language?")
   (comprehension-questions
    '("Which part of our brain do we need to grow to increase our ability to understand new languages?" "Left hemisphere (for most people) -- specifically areas like Broca's area and Wernike's area."))))

(define (class-intro:questions-2)
  (question-section
   (creativity-questions
    "Getting prizes is cool -- but what is the larger purpose of those prizes?"
    "Why is it important to stay motivated over a long period of time when learning new languages?"
    "If you train your brain to learn languages, how will that help you as a coder?")))

(define (class-intro:tips)
  (tips "You may also want to summarize the day's schedule so students know what to expect.  This can be especially helpful if you have a few more things to do before getting on computers, since students can get stuck \"waiting\" for this and get impatient rather than focusing on the important stories/games in the meantime."))

(module+ test
  (require rackunit)

  (class-intro))

