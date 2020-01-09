#lang at-exp racket

(provide class-intro)

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)


(define (class-intro)
  (with-tags (list meta-classroom)
    (story-mode "Class Introduction Story" 5
                "Set up the big-picture goals and norms for the course."

                @story-text{
                  As with all MetaCoders classes, we're here to get better at two things:

                  @ul{
                    @li{Coding}
                    @li{Learning}
                  }
                  In order to practice either one of those, we need a language to learn.  That way, we can learn that language -- and (more importantly) we can learn how to learn languages.

                  In this class, we're going to be using a language named @coach-fills-in{#lang _______}.   I've been learning this language myself, and I want to tell you about a few of its interesting features.

                  @coach-fills-in{Mention one or two features of the language.}

                  As with any language, there are easy things about it.  And there are hard things about it.  But we're going to work together as a class to find things that are just right -- not to easy, and not too hard.  That way we can increase our brains' abilities to read and write in that new language.  

                  @(question-section
                     (creativity-questions
                       "Who has learned a foreign language before?"
                       "Who can tell me some good strategies for learning a new language?")
                     (comprehension-questions
                       '("Which part of our brain do we need to grow to increase our ability to understand new languages?" "Left hemisphere (for most people) -- specifically areas like Broca's area and Wernike's area.")))


                  Lastly, this class is going to involve challenging ourselves with various games.  For some of those games, I'll be giving out rewards and prizes.  
                  
                  @coach-fills-in{Any additional information about your intended gamification in this class.}

                  Also, the class as a whole is a kind of like a game -- because you'll be getting badges every few weeks just for showing up and working hard.  Remember that 100% of winning is showing up. 

                  @(question-section
                     (creativity-questions
                       "Getting prizes is cool -- but what is the larger purpose of those prizes?"
                       "Why is it important to stay motivated over a long period of time when learning new languages?"
                       "If you train your brain to learn languages, how will that help you as a coder?"))

                  })))

