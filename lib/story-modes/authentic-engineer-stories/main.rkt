#lang at-exp racket

(provide boids-story)

(require 
 website-js
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering
 
 website-js/components/boids
 website-js/components/l-system
 website-js/components/pointillism)



(define (maker msg to-make)
 (enclose
  (div
   (button-primary 
     on-click: (call 'showThing)
     msg)
   (span id: (id 'thingTarget))
   (template id: (id 'thing)
     to-make))
   (script ([thingTarget (id 'thingTarget)]
            [thing (id 'thing)])
     (function (showThing)
       @js{@getEl{@thingTarget}.innerHTML = ""}
       (inject-component
         @thing
         @thingTarget)))))

(define (boids-story)
  (with-tags (list interface-design software-engineering true-story)
      (story-mode "How to capture a Boid" 5
                  "Jason captures several Boids and puts them on a website"
                  @story-text{
                    Jason is one of the founding members of MetaCoders.  He's a skilled coder and designer -- and also a skilled video gamer.   One of the things he has always liked about video games are "easter eggs" -- where the game developer leaves a secret in the game for players to discover.
                    
                    One day, he was working on the metacoders.org website, and he thought, "If some of these pages had easter eggs, maybe people would be even more excited about exploring the site."  Because metacoders.org releases all of its curriculum and training materials for free, Jason figured that adding easter eggs would help encourage  

                    The first thing he did was go on a quest to find some cool visual effects that he could embed at the bottom of pages in the website -- so that people would discover them as they scrolled down the page.

                    The internet is a giant place -- like a planet so big it cannot be explored in a lifetime.  But Jason has had a lot of practice finding the things he is looking in the billions of pages of the internet.

                    One of the first things he found was a collection of stunning visual effects that people don't usually see on websites: @(link-to "https://p5js.org/examples/" "Click here to see Jason's first stop").  Many of them were even interactive!
                    
                    He figured that many of these would look great on the metacoders.org website as an easter egg.  And even though he had not yet put any of these effects on the metacoders.org website, he could @i{imagine} them there.  He could @i{imagine} someone scrolling down the page and suddenly seeing a surprising visual effect that interacts with their mouse movements.  He could @i{imagine} how it would make the reader happy and encourage them to click on other pages to see if there were other easter eggs hidden in other parts of the site. 

                    @i{All good code starts with imagination -- with a story that hasn't yet been written, except in the coder's mind.}

                    He used those as inspiration and coded his own version of the effects using the @tt{website} language.  This allowed him to put the effects on the metacoders.org website.

                    Below are some buttons where you can see the visual effects that Jason created.  You can also see some code that would allow @i{you} to put these effects on @i{your} website -- because Jason didn't just write the code the make the visual effects; he also wrote code that lets other people use the same effects without writing as much code.  (That's called "writing a function definition.")  
                    
                    Can you find where these easter eggs are hidden on the metacoders.org website? 

                    @(card
                       (card-body
                          @p{This code makes fractals}
                          @pre{
                            @code{
                              #lang racket
                              (require website-js
                                       website-js/components/boids)
                              (page-preview
                                (l-system style: (properties height: 300)))
                            }
                          }
                          
                          (maker "Show me Fractals!" 
                                 (l-system style: (properties height: 300)))))
                    
                    @(card
                       (card-body
                          @p{This code makes "Boids" -- which are like artificial birds that avoid your mouse.}
                          @pre{
                            @code{
                              #lang racket
                              (require website-js
                                       website-js/components/boids)
                              (page-preview
                                (boids style: (properties height: 300)))
                            }
                          }
                          
                          (maker "Show me Boids!" 
                                 (boids style: (properties height: 300)))))


                    @(card
                       (card-body
                          @p{This code lets you paint!}
                          @pre{
                            @code{
                              #lang racket
                              (require website-js
                                       website-js/components/boids)
                              (page-preview
                                (pointillism style: (properties height: 300)))
                            }
                          }
                          
                          (maker "Show me Pointillism!" 
                                 (pointillism style: (properties height: 300)))))

                    @(question-section
                       (comprehension-questions
                         "What was Jason's reason for putting cool effects on the website?"
                         '("What does it mean to make a function definition?"
                           "To add a new vocabulary word to a language -- so that others can do with one word what would otherwise have taken many lines.")
                         '("Do any translation challenges we've done have function definitions in them?"
                           "Yes.  LOTS!"))
                       (creativity-questions
                         "Why did Jason only put cool effects at the bottoms of pages?  Why not put them everywhere?"
                         "What other effects do you think would make good easter eggs?"))


                  })))



