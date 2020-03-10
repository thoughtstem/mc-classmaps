#lang at-exp racket

(provide overcome-the-unknown-fable) 

(require 
 website/bootstrap
 website-js/components/accordion-cards
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

(module+ test
  (require rackunit)
  
  (overcome-the-unknown-fable))


(define (overcome-the-unknown-fable)
  (with-tags
      (list fable code-of-awesomeness meta-cognition)
  (story-mode "Overcome the Unknown Fable" 15
              "A Code of Awesomeness fable about two fish who looked the same on the outside, but whose minds were very different on the inside."
              @story-text{
                          @(overcome-the-unknown:snapshot)
                          @(embedded-stories (overcome-the-unknown-fable:highlights)
                                             (overcome-the-unknown-fable:prose))
                          @(overcome-the-unknown-fable:questions)
                          @(overcome-the-unknown:tips)
 })))

(define (overcome-the-unknown:tips)
  (tips "For younger audiences, use a whiteboard to track the size and journeys of the two fish."
        "Yes, it is ridiculous that fish might code.  The authors know it, you know it, the audience knows it.  Use the ridiculousness to your advantage!"
        "Don't forget to engage with questions -- at the end and throughout!"))

(define (overcome-the-unknown:snapshot)
  (summary-and-goals
   "Introduce the OVERCOME THE UNKNOWN Code to the Code of Awesomeness. Explore the values and ideas that this Code encompasses."
   (list "Add a new Code to the Code of Awesomeness: Overcome the Unknown!"
         "Discuss the benefits of taking on new challenges."
         "Learn about mindsets, world-views, attitudes and how they can change our life and behavior."
         "Set up a classroom norm: sometimes we will do stuff we haven't done before!"
         "Relate the abstract concept (Overcome the Unknown) to tangable actions and experiences through story."
         "Prepare for the Code Of Awesomeness Motto Creation Game Mode")))

(define (overcome-the-unknown-fable:highlights)
  (with-tags
      (list fable code-of-awesomeness meta-cognition)
    (story-mode "Overcome the Unknown Fable: Story at a Glance" 10
                "Plot points for ad-libbed telling of the Overcome the Unknown fable."
                @story-text{
                            @ol{@li{There are two fish, @b{Trout} and @b{Catfish}, who are the same except for the way they think and talk. For example:
                                    @ul{@li{While @b{Trout} says: @i{"I hate when the bigger fish laugh at me when I do coding. One day, I’ll be the best around."}}
                                        @li{@b{Catfish} says: @i{“I think I got better at coding today. If I keep it up, I’ll be the best around.”}}
                                        @li{While @b{Trout} says: @i{"I lost the coding competition, so I'm switching to jewelry-making.  I hate losing."}}
                                        @li{@b{Catfish} says: @i{"I lost the coding competition, so I'm going to practice even harder for the next one."}}}}
                                @li{Both fish enter coding tournaments.}
                                @li{@b{Trout} wins and laughs at all the smaller fish who lost.}
                                @li{@b{Catfish} doesn't win, but talks to the other fish and learns what they did better than her.}
                                @li{Both fish grow up and become the biggest fish in their pond}
                                @li{@b{Catfish} decides to travel and learn more.}
                                @li{@b{Catfish} competes with even bigger fish in bigger ponds. When she gets to be the biggest in the pond, she moves to an even bigger pond.}
                                @li{@b{Catfish} grows into a gigantic fish.}
                                @li{Meanwhile, @b{Trout} stays home and wins the same competition year after year. She laughs at the smaller fish.}
                                @li{When @b{Catfish} comes home to see everyone, she is the biggest fish they have ever seen!}
                                @li{@b{Trout} is upset, and she refuses to talk to @b{Catfish} at all.}
                                @li{@b{Trout} stays in the small pond her whole life, one day losing to young fish. She retires from coding after that.}
                                @li{@b{Catfish} travels the big ponds of the world, a medium-sized fish and one of the best fish coders ever.}}
 })))


(define (overcome-the-unknown-fable:prose)
    (story-mode "Overcome the Unknown Fable: Full Text" 10
                "A Code of Awesomeness fable about two fish who looked the same on the outside, but whose minds were very different on the inside."
                @story-text{
                  Once upon a time, there were two small fish; Trout and Catfish. They both lived in one big pond -- at least it was a big pond for the two very small fish.  Both Trout and Catfish were young and neither one of them was very good at things that all fishes do -- like coding, and skiing, and martial arts, and creative writing, and parachuting, and making jewelry, and eating smaller fish.

                  Although Trout and Catfish were best friends, there was one big difference between them.  It wasn't their color.  (Both were rainbow-colored.)  It wasn't their dreams.  (Both dreamed of becoming the biggest fishes in the pond.)  
                  
                  No, the difference was actually in the @i{minds} of the fish.  You wouldn't be able to see the difference from the outside.  But if you listened carefully to them talk, you might be able to @i{hear} it.

                  Trout would often say things like: "I hate when the bigger fish laugh at me when I do coding. One day, I'm going to be the best coder in the pond."                  

                  Catfish would often say things like: "I feel like I'm a tiny bit better at coding today than I was yesterday.  If I keep this up, one day, I'll be the best coder in the pond."

                  Did you catch the difference?  Let's listen again.   

                  Trout once said: "I lost the coding competition, so I'm switching to jewelry-making because I'm better at that.  I hate losing." (She did @i{not}, in fact, switch to jewelry-making.)

                  Catfish once said: "I lost the coding competition, so I'm going to practice even harder for the next one."

                  Did you catch the difference that time?

                  @(hr)

                  Time passed and both fish grew from tiny to medium-sized.  The difference between their minds grew, too. One day at their weekly brunch, Trout and Catfish discussed the coding tournaments they had competed in over the last week:

                  "Yesterday, I beat a bunch of little minnows in the coding competition and laughed at them."  Said Trout.  "Small fish are so basic."

                  "Hmm."  Catfish said.  "Well, today, I lost my coding tournament.  But it was a tough competition -- against some of the best coders in the entire pond."

                  "How many trophies do you have?" Trout asked.  "I have six trophies!"

                  "I don't remember," Catfish said. "Not many.  I don't go to tournaments for trophies."

                  Trout sighed -- sometimes Catfish was very odd.

                  @(hr)
                  More time passed and now both Trout and Catfish had grown to be the biggest in the whole pond -- even bigger than the turtles! That difference inside of them had also grown so large that anyone who knew them could hear it in the way they talked:

                  One day, after comparing herself to every other fish in the pond, Trout annouced: "We finally made it!  We're officially the biggest fish in the whole pond.  No one can beat @i{me} at coding." 

                  Catfish said, "No one?"

                  "I could beat you if I wanted to," Trout said, "but I don't want to make you look bad."

                  "I don't mind if you make me look bad." Catfish said.

                  "Look -- I'm just too busy to compete with you right now," said Trout.  "Maybe tomorrow."

                  Catfish said, "Actually, I'm leaving today."

                  "Leaving?  You're leaving the pond?" Trout said, surprised.  "But what about our dream of becoming the biggest fish in the whole pond?  We @i{finally} did it!"

                  "It's just..." said Catfish, "don't you ever wonder if there are bigger ponds out there?"

                  "No!" said Trout.  "I've spent my entire life becoming the biggest fish @i{here}.  If the next pond is even bigger, there might be even bigger fish!"

                  "That's kind of what I'm hoping for," said Catfish.

                  "What if they laugh at you?" asked Trout.

                  "I suppose that might happen," said Catfish. "I'll take the risk."

                  "What if they are better at coding than you?" said Trout.

                  "Exactly!" said Catfish.  "I can become even better out there than I can in here."

                  Trout humphed and swished away in a swarm of bubbles, saying over her shoulder, "Fine!  With you gone, I'll finally be the biggest fish of all!"

                  @(hr)
                  Later that day, Catfish bought plane tickets to a larger pond -- it was @i{ten times} larger, filled with @i{gigantic} fish. When Catfish arrived in the new pond -- those gigantic fish did sometimes laugh at her.  And the gigantic fish did code faster and better than her -- at least at first.  

                  But slowly, Catfish grew, and kept entering coding tournaments, and the day that she became the biggest fish in that pond -- can you guess what she did?  She bought plane tickets to a new pond -- one @i{twenty} times bigger than her home pond, filled with @i{enormous} fish!

                  Once again, Catfish was just one of the smaller fish, and at first Catfish lost every coding tournament.  But Catfish knew what she was doing.  For years, she moved from pond to pond, always knowing when to go -- once she had become the biggest in the old pond.  

                  Many years later, Catfish decided to visit her home pond again.  When she swam off the plane into that tiny pond, all of the other fishes' mouths dropped open.  They had never in their entire lives dreamed that a fish could ever get @i{that big}.

                  Trout pushed her way through the shocked crowd to the front, until she was nose to (much larger) nose with Catfish.

                  "What are @i{you} doing back here?" Trout snapped. 

                  "That's no way to treat an old friend," said Catfish.

                  Trout humphed and swam away, saying over her shoulder, "Go back to your big ponds and leave me alone."

                  @(hr)
                  It's always sad when two former friends' have such different mindsets that they cannot get along. Trout stuck to her small pond, entering the same small tournaments and winning the small trophies over and over again.  She retired from tournaments early, the first time a young minnow beat her at a coding tournament.
                  
                  Catfish, on the other hand, grew to be a medium-sized fish in some of the biggest ponds in the whole world.  She went on to become one of the most famous fish coders of all time!  She traveled all over, competing in the biggest coding tournaments -- sometimes winning and sometimes losing, but always learning.
                }))

(define (overcome-the-unknown-fable:questions)
  (question-section
   (comprehension-questions
    "Which fish had a better mindset?"
    "What adjectives would you use to describe Trout's mindset versus Catfish?"
    "Which fish had a 'growth mindset' and which had a 'fixed mindset'?")
   (creativity-questions
    "In what ways are you like Trout?"
    "In what ways are you like Catfish?"
    "How can we help each other be more like Catfish and less like Trout?"
    "What could Catfish have said to Trout to convince her to think differently?"
    "How can you tell when someone has a mindset that's more like Trout than Catfish?")))
