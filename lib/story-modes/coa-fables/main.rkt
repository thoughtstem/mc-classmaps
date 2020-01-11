#lang at-exp racket

(provide coa-stories
         overcome-the-unknown-fable
         bug-hunter-fable
         energize-the-team-fable 
         coa-focus)

(require 
 website/bootstrap
 website-js/components/accordion-cards
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering
 (only-in 2htdp/image beside square))


(define (coa-stories)
  (with-tags 
    (list fable multi code-of-awesomeness)
    (story-mode "Code of Awesomeness Fables" 30
                "A story comparision activity that introduces the Code of Awesomeness Codes with these fables.  The Code of Awesomeness is a chance to discuss critical values while learning to code.  It also (along with the Code of Awesomeness Game Modes) provides an opportunity to co-create call-and-response traditions within a group of students -- great for team-building and for forging a strong group identity."

                @story-text{Read the following stories and discuss:

                 @(embedded-stories
                   (overcome-the-unknown-fable)
                      
                   (bug-hunter-fable)
                      
                   (energize-the-team-fable))
                   
                 @(question-section
                   (comprehension-questions
                     '("What is an alegory?" 
                       "An alegory is a story whose true meaning is encoded -- where each story part seems to mean one thing but actually means something different."))
                   (creativity-questions
                     "What is each story an alegory for?"
                     "Pick one story.  Write down notes about that story on the board.  Discuss which of those parts has a hidden meaning."
                     "Which of the stories might be an alegory for more than one thing?  How so?"))
               })))


(define (overcome-the-unknown-fable)
  (with-tags 
    (list fable code-of-awesomeness)
    (story-mode "Overcome the Unknown Fable" 10
                "A Code of Awesomeness fable about two fish who looked the same on the outside, but whose minds were very different on the inside."
                @story-text{
                  Once upon a time, there were two small fish in one big pond -- or rather, it seemed like a big pond at the time.  They were both young and neither one of them was very good at things that fishes do -- like coding, and skiing, and martial arts, and creative writing, and parachuting, and making jewelry, and eating smaller fish.

                  Although they were best friends, there was one big difference between them.  It wasn't their color.  (Both fishes were rainbow colored.)  It wasn't their dreams.  (Both small fishes dreamed of becoming the biggest fishes in the pond.)  
                  
                  No, the difference -- that seemed so small when they were young -- was actually in the minds of the fish.  You wouldn't be able to see the difference from the outside.  But if you listened carefully to them talk, you might be able to @i{hear} it.

                  The first fish would often say things like this, "I hate when the bigger fish laugh at me when I do coding. One day, I'm going to be the best coder in the pond."                  

                  But the second fish would often say things like this, "I feel like I'm a tiny bit better at coding today than I was yesterday.  If I keep this up, one day, I'll be the best coder in the pond."

                  Did you catch the difference?  Let's listen again.   

                  The first fish once said something like this, "I lost the coding competition, so I'm switching to jewelry making because I'm better at that.  I hate losing."

                  But the second fish once said something like this, "I lost the coding competition, so I'm going to practice even harder."

                  Did you catch the difference?  

                  One day, both fish had grown from tiny to medium-sized, the first fish said something like this, "Today, I beat a bunch of smaller fish in the coding competition and laughed at them.  Small fish are so basic."

                  The second fish said, "Today, I lost another coding tournament.  But it was a tough competition -- against some of the best coders in the entire pond."

                  The first fish said, "Did you get a trophy?  I got a trophy."

                  The second fish said, "Not yet.  I don't go to tournaments for trophies."

                  One day, after both fish had grown to be the biggest in the whole pond -- bigger than the turtles and even bigger than the allegators.  They still looked the same: both rainbow, and both gigantic.  
                  
                  But that difference inside of them had grown so large that anyone who listened to them talk could hear it:

                  The first fish said one day, "We finally made it.  We're the biggest fish in the whole pond.  No one can beat me at coding anymore." 

                  The second fish said, "No one?"

                  The first fish said, "I could beat you if I wanted to, but I don't want to make you look bad."

                  The second fish said, "I don't mind if you make me look bad."

                  The first fish said, "Look -- I'm just too busy.  Maybe tomorrow."

                  The second fish said, "Actually, I'm actually leaving today."

                  Surprised, the first fish said, "Leaving?  You're leaving the pond?  But what about our dream of becoming the biggest fish in the whole pond?"

                  The second fish said, "It's just... don't you ever wonder if there are bigger ponds out there?"

                  "No!" said the first fish.  "I've spent my entire life becoming the biggest fish.  What if the next pond is even bigger and there are even bigger fish?"

                  "That's kind of what I'm hoping for," said the second fish.

                  "What if they laugh at you?" asked the first fish.

                  "I don't mind when people laugh," said the second fish.

                  "What if they are better at coding than you?" said the first fish.

                  "That's what I'm hoping for," said the second fish.

                  In a humph, the first fish swam away, saying over its shoulder, "Fine!  With you gone, I'll finally be the biggest."

                  That day, the second fish bought plane tickets to a larger pond -- ten times bigger, filled with gigantic fish. When the second fish arrived in the new pond -- those gigantic fish did sometimes laugh.  And the gigantic fish did beat the second fish at coding -- at least at first.  

                  But slowly, the second fish grew, and kept entering coding tournaments, and the day that it became the biggest fish in that pond -- can you guess what it did?  It bought plane tickets to a new pond -- one ten times bigger, filled with @i{even bigger} fish.

                  Once again, it was hard, and at first the second fish lost every coding tournament.  But the second fish knew what it was doing.  For years, it moved from pond to pond, always moving to a new pond once it had become the biggest in the old pond.  

                  One day, it decided to visit its home pond again.  When it hopped off the plane into that tiny pond, all of the other fish's mouths dropped open.  That second fish was the biggest one they had ever seen.

                  When the first fish came to greet the second (now much larger) fish, it was quite grumpy, "What are @i{you} doing back?" 

                  "That's no way to treat an old friend," said the second fish.

                  But the first fish wouldn't listen.  It swam away, saying over its shoulder, "Go back to your big ponds and leave me alone."

                  It's always sad when two fish have such different mindsets that they cannot get along.  That second fish, now a medium-sized fish in some of the world's biggest ponds world went on to become one of the most famous fish coders of all time, winning bigger and bigger tournaments and bigger and bigger trophies.  The first fish, although it was the biggest fish in that small pond went on to win many more tiny trophies in many tiny tournaments.  It retired from tournaments early, the moment some of the younger fishes began to beat it at coding.
                  
                  It died forgotten, in the biggest house of its small pond.

                  @(question-section
                     (comprehension-questions
                       "Which fish had a better mindset?"
                       "Which fish had a 'growth mindset' and which had a 'fixed mindset'?"
                       "What adjectives would you use to describe the first fish's mindset versus the second?")
                     (creativity-questions
                       "In what ways are you like the first fish?"
                       "In what ways are you like the second fish?"
                       "How can we help each other be more like the first fish and less like the second fish?"
                       "What could the second fish have said the the first fish to convince it to have a better mindset?"
                       "How can you tell when someone has a mindset that's more like the first fish than the second?"))
                  
                })))




(define (bug-hunter-fable)
  (with-tags (list fable code-of-awesomeness)
      (story-mode "Be a Bug Hunter Fable" 10
              "A Code of Awesomeness fable about two animals who have different strategies for dealing with bugs."
              (div @paras{
               @tips["Before you start, let the students pick the characters. You can these characteristics as guides: (Woodpecker): practical and level-headed. (Ostrich): impulsive and anxious"
       "For younger students, show how the houses grow throughout the story: ex. 'Woodpeckers house was THIS tall' and holding your hand at knee-height."]

              Once, long ago, Woodpecker and Ostrich were competing to build the biggest house in the desert. They began in the Spring, knowing they would have to finish before the hot summer arrived, bringing wild winds and dangerous sandstorms.
                   
 Now, the branches they were building with occasionally housed a termite or two. Whenever @b{Woodpecker} found a termite while building her house, she stopped building to track it down. This made her house grow a little slower. Meanwhile @b{Ostrich} was scared that he would fall behind in the contest if he stopped too long, so he kept building and ignored the termites. His house grew quickly.
 
 Woodpecker and Ostrich worked for many days. Both houses grew bigger and bigger, but everyone could see that Ostrich was winning the contest. But the Spring wasn't over yet, and the houses weren't finished...

   Woodpecker and Ostrich worked for many, @i{many} days. Woodpecker's house was gaining on Ostrich's. Ostrich was spending less and less time @i{building} and more and more time @i{fixing} the crumbling walls the termites were eating. Meanwhile, Woodpecker's house grew at the the same, steady pace.

   Finally, the hot summer arrived. Woodpecker and Ostrich stayed cool in their equally huge houses. When the first big sandstorm blew through the desert, Woodpecker hid in her house, safe from the biting wind. Ostrich's house, however, collapsed with the first strong gust of wind.

   Woodpecker helped Ostrich out of the wreckage of his termite-ridden house and brought him to her own to shelter from the storm. Woodpecker insisted that Ostrich spend the summer in her house, and offered to help him rebuild his own, come Fall. She also offered to show Ostrich how to hunt down any termites they came across in the process.

  Ostrich gratefully accepted the help, and over that summer and fall, learned how to @b{be a bug hunter}. His new home was strong, sturdy, and bug-free. The two houses stood for years and years to come.
  
  @(question-section
      (comprehension-questions
       "Which animal had a better strategy?")
      (creativity-questions
         "What specific coding habits could you adopt to code more like the Woodpecker?"
         "What specific coding habits could you get rid of to code less like the Ostrich?"))
       }))))


(define (energize-the-team-fable)
  (with-tags (list fable code-of-awesomeness)
    (story-mode "Teach the Team Fable" 10
                "A Code of Awesomeness fable about the value of teaching others, and the paradoxical pitfall of hording ones knowledge."
                @story-text{
                  Once upon a time, there were two young squirrels -- one brown, the other gray.  They were friends, but the brown squirrel always seemed to do better in school -- earning more acorns than the gray squirrel.

                  Like all squirrels, whenever they learned something new from their teacher, they would write the information down on a tiny piece of paper.  Then, like all squirrels, they would both sneak away after school to their secret places and bury their notes for later.  

                  Before big tests, squirrel students always go to their secret places alone and dig up their notes to study (and nuts to snack on).
                  
                  One day, the gray squirrel was sneaking off to its secret place, when suddenly it noticed another squirrel just up ahead, digging in the ground.  

                  The gray squirrel snuck closer, realizing that it had stumbled upon the brown squirrel's secret hiding place.  Peering through the trees, the gray squirrel saw the brown squirrel dig up note after note.  It was studying furiously for the big test tomorrow.

                  When the brown squirrel was done studying it looked around to make sure it was alone, burried its notes, and scurried away.   The gray squirrel crept out and walked to the patch of freshly packed dirt.

                  "Should I dig it up?" the gray squirrel thought to itself.  "The brown squirrel always makes better grades than I do." 

                  @(creativity-questions
                     "Who owns the information in the notes -- the gray squirrel, the brown squirrel, the teacher squirrel, or someone else?"
                     "Is it morally right for the gray squirrel to dig up another squirrel's notes?"
                     "What if it just looks at the notes and puts it back?")

                  The gray squirrel begins to dig and finds a note from the coding class.

                  @(accordion-card
                    @pre{
                      @code{
                        #lang racket
                        (require 2htdp/image)
                        (circle 40 'solid 'red)
                      }
                    })

                  The squirrel recognizes it as a note about how to code a red circle.  It buries that note, and digs farther to find another:
               
                  @(accordion-card
                    @pre{
                      @code{
                        #lang racket
                        (require 2htdp/image)
                        (above
                          (circle 40 'solid 'red)
                          (circle 40 'solid 'red))
                      }
                    })

                  The squirrel recognizes it as a note about how to code two red circles -- one on top of the other.  So it goes for several hours -- the gray squirrel digging up the brown squirrel's notes and studying them, and burrying them again.  Then it scurried away to its own secret place, where it continued studying its own notes. 

                  The next day, all the squirrels took the coding test.  The day after that, the coding teacher -- a giant beige squirrel -- posted all the grades on the big oak tree.  The gray squirrel was pleased to see its name at the top of the list.  The brown squirrel's name was just below -- on the second line.  The giant beige teacher squirrel shook the gray squirrel's hand and gave it a bag containing two hundred acorns.

                  "Well done," said the teacher squirrel.  "You've earned your bonus acorns."

                  But all that week, the gray squirrel couldn't sleep.  It felt bad about what it had done.  It wasn't exactly stealing -- but looking at someone's code without permission just felt wrong.  
                  
                  On the night before the next coding test, the gray squirrel crept out in the middle of the night and burried the two hundred acorns in the brown squirrel's secret place.  Not only that, the gray squirrel also dug up all of its own notes, copied each one, and burried the new notes in the brown squirrel's secret place.  

                  The next day, they took the test.  And the day after that, the beige squirrel posted the results on the oak tree.  The gray squirrel was certain that, this time, the brown squirrel would be at the top of the list.  But no.

                  "Well done," said the teacher squirrel to the gray squirrel.  "You've earned two hundred more acorns."

                  Now the gray squirrel felt even worse.

                  So it went for the rest of the month.  The gray squirrel kept trying to make things right by burrying more notes for the brown squirrel to find -- hoping that the brown squirrel would finally be at the top of the list.  But the brown squirrel always came in second.  And the gray squirrel always came in first -- earning more and more acorns.

                  One day, when the gray squirrel was burrying more notes for the brown squirrel to find, it heard a rustling in the leaves overhead.    Suddenly, the brown squirrel lept down and shouted, "Caught you!  I @i{knew} someone had found my secret place.  I kept finding notes that I didn't remember writing."

                  The gray squirrel confessed, telling the brown squirrel how it had dug up the notes once and then tried to make things right ever since.  "I don't understand, though," said the gray squirrel.  "I've been trying @i{help} you.  But somehow I keep coming in first."

                  The brown squirrel thought for a moment.  "You really want to make things right?" 

                  The gray squirrel nodded.  

                  "Then show me where @i{your} secret place is.  And promise me you won't ever come back to mine."

                  @(hr)

                  The day before the next test, the gray squirrel went to its secret place to begin studying.  As it dug, it began to find notes that it didn't remember hiding -- written in what looked suspiciously like the brown squirrel's handwritting.

                  Like:

                  @(accordion-card
                    @pre{
                      @code{
                        #lang racket
                        (require 2htdp/image)
                        (beside
                          (square 30 'solid 'red)
                          (square 30 'solid 'orange)
                          (square 30 'solid 'yellow)
                          (square 30 'solid 'green)
                          (square 30 'solid 'blue)
                          (square 30 'solid 'purple))
                      }
                    })


                  That one showed how to display the colors of the rainbow -- like so:

                  @(write-img
                      (beside
                       (square 30 'solid 'red)
                       (square 30 'solid 'orange)
                       (square 30 'solid 'yellow)
                       (square 30 'solid 'green)
                       (square 30 'solid 'blue)
                       (square 30 'solid 'purple)))
                  
                  There were many more -- all sorts of notes about things that the gray squirrel wouldn't otherwise have remembered. 

                  The next day, the squirrels took the coding test.  And the day after, the results were posted on the old oak tree.  To the gray squirrel's surprise, the brown squirrel was at the top of the list. 

                  The teacher squirrel shook the brown squirrel's hand and said, "It's been a while!  But here are your two hundred acorns."

                  The gray squirrel could take it no more.  "It doesn't make sense," it said, going on to explain to the teacher what had been happening over these last few months.  "Whoever studies the most should make the best grade," said the gray squirrel.  "But that only happened the first time.  Since then, it's been backward.  When I study my notes @i{and} the brown squirrel's, I come in second.  When brown squirrel studies the my notes @i{and} its own, @i{it} comes in second."

                  The teacher squirrel nodded its head wisely.  "Brains don't always work the way you might expect.  Do you think I became the best coding teacher in the forest because I studied the most?" 

                  The gray squirrel and the brown squirrel both noded.

                  "Nope," said the teacher.  "I became the best coding teacher in the forest because  I @i{taught} the most.  Brains learn best when they teach.  When you were burrying notes for each other to find, you were teaching each other.  That means you @i{were} studying.  In fact, teaching is the best kind of studying: whoever teaches the most that learns the most."

                  From that day forward, the gray squirrel and the brown squirrel agreed to take turns teaching each other and their fellow squirrels -- sharing their notes instead of burying and hording them.  The grades on the next test were so high that the teacher handed out two hundred bonus acorns to @i{all} the squirrels in the class.  

                  @(question-section
                      (comprehension-questions
                        '("What is open source software?" 
                          "Code that is written and given freely to other coders."))

                      (creativity-questions
                         "Who can share an example of a time that teaching something helped them learn it?"
                         "How does teaching others relate to teamwork?"
                         "When you are learning a new language, why is it better to teach others than to learn on your own?"
                         "Why do brains learn better when they teach?"))

                })))


(define (coa-focus)
  (with-tags (list meta-classroom fable)
    (story-mode "Code of Awesomeness Focus" 5
                "Review all Codes of Awesomeness as a group and choose one to make into a theme for the day."
                @story-text{
                 @(tips "Values discussed in one class should be reenforced in subsequent classes.  That's the point of this Story Mode."
                        "If you know that the class needs to focus on a particular set of ideas, tell them that; and tell them why.  Then lead a discussion about how that Code of Awesomeness will help them practice those ideas." 
                        "If it doesn't matter which set of ideas the team focuses on today, let the group choose (or perhaps vote on) the Code of Awesomeness to focus on."
                        "Use the discussion questions below as a way to start this Story Mode.")

                 @(comprehension-questions
                    "Who can tell me the three Codes of Awesomeness we selected as a class?"  
                    "Which one shall we focus on today and why?") 
                })))


