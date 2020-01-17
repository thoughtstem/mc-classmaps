#lang at-exp racket

(provide rethinking-bugs
         a-path-in-your-brain-story)

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

(define (rethinking-bugs)
  (with-tags (list debugging)
    (story-mode "Bugs in the brain" 15
                "Many young coders (all the way through college and their first few years on the job) seem to think that bugs happen by magic.  In reality, they happen because coders are not self-aware enough."
                @story-text{
                  @quotation{ 
                    If you debug one bug, you've just debugged one bug.  If you debug your thinking, you've debugged a thousand bugs.  If you've debugged someone else's thinking, please tell me how you did it -- because I never can. ~Stephen R. Foster, MetaCoders Founding Member }
                
                  @(question-section
                    (comprehension-questions
                      "What is the difference between a bug and a mistake?")
                    (creativity-questions
                      "What causes bugs?"
                      "What causes mistakes?"
                      "Why is it often hard for people to admit their mistakes?"
                      "What are some ways you can reduce the number of mistakes you make?"
                      "What might constitute a bug in an English essay?"
                      "What's the difference between a bug and a mistake in an English essay??"
                      )) 
                   
                
                })))

(define (a-path-in-your-brain-story)
  (with-tags (list meta-cognition)
  (story-mode "A Path in Your Brain" 10
              "A metaphor for learning in your brain. Or: why it takes so darn long to learn something new."
              (story-text (a-path-in-your-brain-story:tips)
                          (embedded-stories (a-path-in-your-brain-story:prose))
                          ))))

(define (a-path-in-your-brain-story:tips)
  (tips "Really do choose a volunteer: use this person's name instead of Joe. Use something that they are trying to learn instead of German (piano, algebra, soccer, CODING).  You can even bring them up to sit next to you and keep pointing at their brain to keep reminding the audience that this is happening inside a brain."
        "You can illustrate this story as you tell it -- drawing the cottage, clearing and paths on a whiteboard, widening the lines or erasing them as fits the story."))

(define (a-path-in-your-brain-story:prose)
    (story-mode "A Path in Your Brain: Full Text" 10
                "A metaphor for learning in your brain. Or: why it takes so darn long to learn something new."
                @story-text{
                            We are going to going into someone's brain -- any volunteers? Where did I put my scapel... I'm kidding! No, we aren't @i{really} going into someone's brain, but we are going to @i{imagine} that we are. We are going to use a metaphor to understand what goes on in your brain -- and yours, and yours, and mine, and your uncle's, and your grandma's brain -- what goes on in @i{everyone's} brain when they are learning.

                            The brain we are going to take our journey into today belongs to Joe. Joe is about your age. He is @i{just} starting to learn how to speak German. Let's hop into his brain while he is struggling through some German homework after his very first German class.

                            Let's imagine the inside of Joe's brain as a giant forest. Here's is a little cottage in a clearing, and on the edges of the clearing we can see lots of little trails going out into the forest. Some of these trailheads are clearly marked, with a wide entrance, big signs and arrows. Others are almost invisible they are so small. There is even one or two places where it looks like there used to be a trail but the forest has grown over it, covering the entrance.

                            Coming out of the cottage -- look it's Joe! It's a @i{tiny} Joe, inside the real Joe's brain-forest. He has his adventuring backpack with him, complete with flashlight, machete and snacks. Tiny Joe is heading to the forest.

                            But Tiny Joe doesn't take one of the clearly marked paths. He doesn't take any of the smaller paths either. Tiny Joe walks straight to the edge of the forest and starts pushing his way through.

                            It's very slow-going; this forest is very thick. Tiny Joe has to kick big stones, slice through heavy vines, stomp through thick bushes, even push some very large boulders out of his way. At one point, Tiny Joe comes to a river and creates a small, haphazard bridge out of a fallen log.

                            After struggling through his German homework for 30 minutes (remember, that's what @i{real} Joe is @i{actually} doing), Joe is done with his vocabulary review. He's tired and glad to be done!

                            @(hr)
                            Let's fast-forward a bit. Joe keeps going to his German classes, keeps doing his German vocabulary homework. And Tiny Joe keeps traipsing down that path in his brain-forest.

                            Everytime Tiny Joe journey's down that same path, it gets easier. There are fewer rocks and bushes in his way. He has built on that bridge across the river so that it's much safe and easier to cross. He has made the path wider and flatter by walking down it so many times.

                            Real Joe is finding it easier and easier to remember the German vocabulary and grammar. Now he doesn't have to stare at his textbook the whole class -- he can even have a whole (short) conversation in German without needing his notes once!

                            One day, when Joe gets the flu, he misses two whole weeks of German class. He doesn't pick up his German textbook @i{once} in those two weeks. When he comes back to class, and Tiny Joe goes traipsing down that path again, he struggles a bit! Real Joe is frustrated; he could have this conversation @i{easily} two weeks ago!

                            But in those two weeks, when Joe didn't think about German @i{once}, the path in his brain-forest started to grow over with little bushes and vines. A few of those stones cam tumbling back. A rainstorm roughed up the nicely trampled dirt. It was harder for Tiny Joe to walk that pathway; and harder for Real Joe to remember his German!

                            After a little extra practice, Tiny Joe had that pathway cleared nicely again and continued his progress of widening it and making it better. Tiny Joe added some nice clear signs to his path, built up that bridge, even lengthened the path -- making it go quite deep through the forest. The next time Real Joe takes two weeks of vacation from his German class, he shows off his German to his grandparents and spent some time reviewing his vocabularly list. He has hardly any trouble coming back to class after the break, this time!

                            Several years of German classes later, Joe is quite @b{fluent} in the language. He can have long conversations in German with his classmates and with his cousins who live in Germany and speak German every day. Joe can read some German books, write essays in German -- he even @i{dreams} in German sometimes!

                            The path in Joe's brain is wide, welcoming and inviting. It's so easy to travel that Tiny Joe can run down it with his eyes closed! It's hard to remember that there was @i{ever} a time that the path didn't exist at all. 
                
 }))

;unfinished....
(define (a-path-in-your-brain-story:epilogue-prose)
  (story-mode "A Path in Your Brain: Full Text Epilogue" 5
              "An optional addition to the A Path in Your Brain story."
              @story-text{After several years of taking German, Joe has become quite fluent -- . Now, let's say Joe takes a break from his German classes. He stops learning new German vocabulary and grammar, and he also @i{stops practicing}.

                            Some time passes and one day, Joe runs into one of his old classmates from his German class, Jane! Jane continued taking German after Joe finished. Happy to see him, she immediately starts talking at him in German, just like they used to. But Joe is having a very hard time understanding what Jane is saying; she is talking very fast! He struggles to find the right words to say in reply.

                            Inside Joe's brain, that Tiny Joe is trying to travel down that German path. But is has been a long time since Tiny Joe has been this way! The bushes have grown almost completely back, new boulders have rolled into the path and the nice sturdy bridge he built has been totally washed away!

 ...
 }))

(module+ test
  (require rackunit)

  (rethinking-bugs)
  (a-path-in-your-brain-story))

