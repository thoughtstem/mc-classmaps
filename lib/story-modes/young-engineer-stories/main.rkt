#lang at-exp racket

(provide youtube-story)

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

(define (youtube-story)
 (with-tags (list software-engineering true-story young-engineer)
    (story-mode "YouTube can't tell me what language to use!" 5
     "A high schooler embeds youtube videos on their site, but prefers to use Lisp instead of HTML."
     @story-text{
       Monique has a YouTube channel with more than a 1000 followers and growing.  She vlogs about her life, what she likes to cook, what she likes to code, what she likes to wear, what she likes to play on the piano, and all sorts of things.

       Lately, she's been writing a website to showcase her videos.  She plans to use Twitter and Facebook to drive traffic to her website, which will drive traffic to various videos.  When her traffic is high, she plans to use YouTube ads to help her make money.
       
       YouTube makes it easy to embed a video.  For example, here's how you might embed a video of one of Monique's favorite tutorials about how to study:

       @pre{
         @code{
           <iframe 
             width="560" 
             height="315" 
             src="https://www.youtube.com/embed/N5R-RX4fbbk" 
             frameborder="0"></iframe> 
         }
       }

       That embeds a video like this:

       @html/inline{
         <iframe width="560" height="315" src="https://www.youtube.com/embed/N5R-RX4fbbk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
       }

       But Monique's doesn't like writing in HTML because she knows a shorter way.  She took the time to convert the HTML code above into the language she perfers (@tt{website} -- which is based on one of the oldest and most respected programming languages: Lisp).  

       @pre{
         @code{
           (iframe 
             width: 560 
             height: 315 
             src: "https://www.youtube.com/embed/N5R-RX4fbbk" 
             frameborder: "0")
         }
       }

       It ends up doing the same thing, but it's slightly shorter.  Monique believes every little bit counts.  She likes writing code -- but she likes her code to be short and clear.  

       @(question-section
         (comprehension-questions
           "Can you see what's shorter about Monique's code?"))

      @(iframe 
         width: 560 
         height: 315 
         src: "https://www.youtube.com/embed/N5R-RX4fbbk" 
         frameborder: "0")

       Here's a program that Monique pushed to one of her personal repositories on Github.  It's not her full website -- just a short, working program that will help her remember how to embed a YouTube video if she ever forgets (or if she needs to show someone else how to do it).

       @pre{
         @code{
           #lang racket
           (require website/bootstrap)

           (preview-page
             (container
               (jumbotron (h1 "Welcome to my website!"))
               (p "Here are some videos I like")
               (iframe 
                 width: 560 
                 height: 315 
                 src: "https://www.youtube.com/embed/N5R-RX4fbbk" 
                 frameborder: "0")
               (iframe 
                 width: 560 
                 height: 315 
                 src: "https://www.youtube.com/embed/MlJdMr3O5J4" 
                 frameborder: "0")))
         }
       }

       @(question-section
         (creativity-questions
           "Why is shorter code often better code?"
           '("Can Monique's example program be shortened even more?"
             "Yes.  She could make a function definition for her iframe.")))

       A week later, Monique woke up in the middle of the night realizing she could make her code even shorter.  So she pushed a change to her Github repository.
       
       The code does exactly the same thing, but it's several lines shorter!  Monique was able to go back to sleep with a sigh of relief.

       Here's her code:

       @pre{
         @code{
           #lang racket
           (require website/bootstrap)
            
           (define (youtube-video id)
             (iframe 
               width: 560 
               height: 315 
               src: (~a "https://www.youtube.com/embed/" id)
               frameborder: "0"))

           (preview-page
             (container
               (jumbotron (h1 "Welcome to my website!"))
               (p "Here are some videos I like")
               (youtube-video "N5R-RX4fbbk")
               (youtube-video "MlJdMr3O5J4")))
         }
       }

       @(question-section
         (comprehension-questions
           '("Other than a function definition, what did Monique have to add to her code?"
             "The ~a function call")
           "Without the new definition, how long would Monique's program be if she added another video?"
           "With the new definition, how long would Monique's program be if she added another video?")
         (creativity-questions
           '("What do you think ~a does?"
             "Try it out.  Run (~a \"Hello\" \"World\")")))


     })))





