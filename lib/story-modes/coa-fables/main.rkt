#lang at-exp racket

(provide coa-stories
         overcome-the-unknown-fable
         bug-hunter-fable
         energize-the-team-fable
         teach-the-team-fable
         coa-focus
         all-code-of-awesomeness-fables)

(require 
 website/bootstrap
 website-js/components/accordion-cards
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering
 (only-in 2htdp/image beside square))


;Add stories here for testing and rolling out to Stories tab on site
(define (all-code-of-awesomeness-fables)
  (list (overcome-the-unknown-fable)
        (bug-hunter-fable)
        (teach-the-team-fable)
        (energize-the-team-fable)
        (coa-focus)))

(module+ test
  (require rackunit)

  (all-code-of-awesomeness-fables))

;============

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

; ===== OVERCOME THE UNKNOWN ====

(define (overcome-the-unknown-fable)
  (with-tags
      (list fable code-of-awesomeness meta-cognition)
  (story-mode "Overcome the Unknown Fable" 15
              "A Code of Awesomeness fable about two fish who looked the same on the outside, but whose minds were very different on the inside."
              @story-text{@(overcome-the-unknown:tips)
                          @(embedded-stories (overcome-the-unknown-fable:highlights)
                                             (overcome-the-unknown-fable:prose))
                          @(overcome-the-unknown-fable:questions)
 })))

(define (overcome-the-unknown:tips)
  (tips "For younger audiences, use a whiteboard to track the size and journeys of the two fish."
        "Yes, it is ridiculous that fish might code.  The authors know it, you know it, the audience knows it.  Use the ridiculousness to your advantage!"
        "Don't forget to engage with questions -- at the end and throughout!"))

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



;==== BE A BUG HUNTER ====

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


;=== TEACH THE TEAM ====
;need to do renaming in multiple files

(define (teach-the-team-fable)
  (with-tags (list fable code-of-awesomeness meta-classroom teamwork)
    (story-mode "Teach the Team Fable" 10
                "A Code of Awesomeness fable about the value of teaching others, and the paradoxical pitfall of hording ones knowledge."
                (story-text (teach-the-team-fable:tips)
                            (embedded-stories (teach-the-team-fable:highlights)
                                              (teach-the-team-fable:prose))
                            (teach-the-team-fable:questions)))))

(define (teach-the-team-fable:tips)
  (tips "Try pausing the story after revealing the grades and asking the students why Wolf and so many of the other animals did better than Bear."
        (list "Before you start, you can let the students pick the characters. Use these characteristics as guides:"
              (ul (li "(Bear): works alone, smart")
                  (li "(Wolf): a team player, smart"))
              "There are other characters throughout the story (Teacher, other students) -- ask the students for new animals anytime you need one!")))

(define (teach-the-team-fable:highlights)
  (story-mode "Teach the Team Fable: Story at a Glance" 10
              "Plot Points for ad-libbed telling of the Teach the Team Fable."
              (story-text (steps (list "There are two students, " (b "Bear") " and " (b "Wolf") ", who are the top of their class.")
                                 (list "They are both studying for a very challenging " (b "history test") ".")
                                 (list "All the other students keep interrupting their studying to ask them for help and advice!"
                                       (ul (li (b "Bear") " gets annoyed and hides away where no one can find him. He studies alone.")
                                           (li (b "Wolf") " helps out the other students, and ends up with a whole study group.")))
                                 (list "When the scores for the test are released, " (b "Bear") " is shocked to see that he is in the middle of the pack, with " (b "Wolf")  " and several other students with better grades than him!")
                                 (list (b "Bear") " thinks there was some error in grading, asks the teacher."
                                       (ul (li (i "Pause here and ask students what they think happened!"))))
                                 (list "Teacher asks how " (b "Bear") " and " (b "Wolf") " studied. Bear and Wolf share their different tactics.")
                                 (list "Teacher explains -- by teaching others and sharing their ideas, " (b "Wolf") " and the rest of the students gained a deeper understanding " (b "Bear") " did, studying alone.")
                                 (list "Next time, " (b "Bear") " joins the study group and they all do better on the test.")
                                 ))))

(define (teach-the-team-fable:prose)
  (story-mode "Teach the Team Fable: Full Text" 10
              "A Code of Awesomeness fable about the value of teaching others, and the paradoxical pitfall of hording ones knowledge."
              @story-text{
 Once, long ago, there was a school in the depths of the forest. All manner of forest creatures attended the Old Oak School, including two classmates: Bear and Wolf.

 Bear and Wolf were the top of their class -- always getting A's in every class! But the upcoming History exam even had the two of @i{them} nervous! Ms. Badger was a very strict teacher and she had warned them many times that this test would be the toughest one so far. It had short answers, long answers, 2 essays and @i{no} multiple choice questions!
 
 So Bear and Wolf gathered their notes, books and study guides and settled in their favorite study nook by the river to get to work. But it wasn't long until they had a vistor. You see, the other students were @i{also} extremely nervous about the test. And they knew Bear and Wolf were the best in the class. @i{And} it was well-known where the two liked to study...

 "Ahem," Raccoon coughed quietly. Bear and Wolf looked up from their notes. "I was stuck on this one question on the study guide, the one about comparing the laws of the Red Squirrel and Grey Squirrel Clans of the early 10th century, and I hoped you might be able to help me..."

 Raccoon looked back and forth between Bear and Wolf, hopefully. After a tense moment, Bear said:

 "Listen, I have to study hard for this too. I don't have time to answer your questions today."

 Raccoon looked pleadingly to Wolf.

 "Well," Wolf said, "I think I have an extra minute. I needed a break anyhow."

 Bear rolled his eyes as Wolf talked Raccoon through the question. @i{Wolf is wasting his time!} Bear thought to himself.

 @(hr)

 Raccoon left a little while later, thanking Wolf profusely for his help. Wolf shrugged, and turned back to his books.

 But it wasn't too long until they had another vistor: Chipmunk. She couldn't remember anything about the signing of the Great River Otter Treaty! Once again, Bear refused to stop his studying. And once again, Wolf offered to help out.

 After Chipmunk came Deer, then Owl and Hedgehog had some questions, then Beaver was in need of help, then Hare and Boar and Snake and @i{Moose}--

 "ENOUGH!" Bear shouted. "How am I supposed to get anything done with all of you traipsing in here everytime you have a silly little question! I don't know about you, Wolf, but I am going to find somewhere with some @i{peace} and @b{quiet}!"

 Bear stomped off into the forest. He stomped off to a cave, deep in the forest, holed up with his notes, books, and study guide, lit a candle and studied in silence for the next three days until the test.

 @(hr)

 Meanwhile, Wolf and Moose were left in the dust of Bear's departure.

 "Well then." Moose declared. "As I was saying -- I just don't understand what Ms. Badger is asking here about the Era of the Redwoods! I don't have @i{anything} about any Red Woods in my notes... Only Brown and Green Woods!"

 Wolf pulled some notes from his folder and began to explain. Shortly, they were joined again by Owl and Hedgehog, who overheard their discussion and were eager to hear Wolf's explaination. Then Hare and Chipmunk returned, with 2 more questions of their own, questions that Hedgehog had her own thoughts on.

 Soon, their little group grew too big for the Study Nook by the river. Wolf and the other animals moved to a field nearby, where more animals joined them. Discussions sprung up all over the group as the animals shared questions, notes, thoughts and ideas. Wolf left his study guide behind, wandering through the large group, joining discussions and answering questions as needed. And so it continued for the three days leading up to the test.

 @(hr)

 The Big History Test came and went. The only thing now was to wait for Ms. Badger to finish grading! It seemed like @i{ages} until the day when she finally announced that she would be passing back their tests.

 Bear was one of the first to get his test back (it was helpful being near the beginning of the alphabet!) and he held his breath as he looked for the final grade, in red ink --

 @i{B-?!} Bear was disappointed, of course -- he rarely got anything lower than an A -- but he quickly reminded himself how difficult the test was. Bear was sure his B- still put him at the head of the class.

 But then he started to hear the whispers from his classmates as they recieved their graded tests: excited whispers claiming C+'s, B-'s, even B's, B+'s! Wolf was at the top of the class with an A+!

 Now this was unheard of! Wolf sometimes bested Bear, but Hedgehog? And @i{Moose}?! There must have been some kind of mistake!

 "Excuse me, Ms. Badger!" Called Bear. "I think there might have been an error in my grading."

 The whole class froze -- did Bear just tell @i{Ms. Badger} that she made a mistake?! 

 "Is that so?" Ms. Badger walked to Bear's desk and peered at his test. She flipped through the pages. She placed the test back on his desk. "The grading is correct."

 "B-But," Bear protested, "how could that be?! Owl said he also got a B-. And so did Chipmunk! Moose said he got a B+. And Wolf got an A+?! That's impossible!"

 "Perhaps they studied more effectively."

 "I studied non-stop for three days! It would have been more if all the others did keep interrupting Wolf and I with their silly questions." Bear glared around the room. "But I finally manage to find some peace and quiet, reviewed all my notes at least two dozen times, wrote five practice essays, made a set of 50 flash cards with dates and names -- it just doesn't make sense! What could they have done that I didn't?"

 "Well," Moose said, "I don't know about all that. We all kind of ended up studying -- together."

 "Yeah, I had a question about the study guide, and I asked Wolf." Said Chipmunk. "And Hedgehog was there and we ended up discussing it for a while. Then Wolf helped us both understand the differences between the two Squirrel Skirmishes. Wolf really helped us all out."

 Everyone looked to Wolf, who had gotten the best grade of the whole class.

 "I didn't actually have any time to study." Wolf admitted. "I am surprised I did this well. Everyone had questions and I wanted to help, so I just ended up... doing that instead."

 "That's why the rest of the class excelled." Ms. Badger said to Bear. "By sharing their notes and ideas, they gained @i{more} knowledge. Wolf did this the most, and he learned the most. By teaching what he knew, and listening to what others knew and thought, Wolf built a deeper understanding of the material."

 Everyone looked at Wolf, again.

 "I had no idea!" Wolf said. "But come to think of it, when I was explaining things to the others, I found new details I hadn't really noticed before. Because I had to be really clear, and often someone had a question I hadn't even thought of before."

 "That is how I know so much about our forest history myself." Said Ms. Badger. "Teaching others helps you learn."

 @(hr)

 Some time later, Wolf and his classmates were studying for the upcoming math test. They were all in the field by the river, taking turns explaining different formulas and inventing word problems for each other. Everyone was listening to Hedgehog explain how to find the area of a triangle, when they had a very unexpected visitor.

 "Hello, Bear." Said Wolf.

 "Hi, everyone." Said Bear. "M-May I... Do you think... Can I join your study group?"

 "Of course!" Wolf said.

 Bear joined the group, and took his turn teaching the team shortly after. Later that week, Bear, Wolf and the rest of the class all aced the test!
 
 }))

(define (teach-the-team-fable:questions)
  (question-section
   (comprehension-questions
    "What was Bear's studying strategy? Wolf's? The other animals'?"
    "Which animal had the better strategy? Why?"
    "Why did Wolf and many of the other animals do better on the test than Bear?")
   (creativity-questions
    "How does this story relate to our class?"
    "What can we do in this class to be more like Wolf?"
    "How can we help each other learn? What 'helping' doesn't actually help our team learn?"
    "How do you like to work on homework/study for tests?")))


;not a COA fable currently, where should it go?
(define (energize-the-team-fable)
    (story-mode "Teach the Team Fable: Full Text " 10
                "A Code of Awesomeness fable about the value of teaching others, and the paradoxical pitfall of hording ones knowledge."
                @story-text{
                  Once upon a time, there were two young squirrels -- one brown, the other gray.  They were friends, but the brown squirrel always seemed to do better in school -- earning more acorns than the gray squirrel.

                  Like all squirrels, whenever they learned something new from their teacher, they would write the information down on a tiny piece of paper.  Then, like all squirrels, they would both sneak away after school to their secret places and bury their notes for later.  

                  Before big tests, squirrel students always go to their secret places alone and dig up their notes to study (and nuts to snack on).
                  
                  One day, the gray squirrel was sneaking off to its secret place, when suddenly it noticed another squirrel just up ahead, digging in the ground.  

                  The gray squirrel snuck closer, realizing that it had stumbled upon the brown squirrel's secret hiding place.  Peering through the trees, the gray squirrel saw the brown squirrel dig up note after note.  It was studying furiously for the big test tomorrow.

                  When the brown squirrel was done studying it looked around to make sure it was alone, buried its notes, and scurried away.   The gray squirrel crept out and walked to the patch of freshly packed dirt.

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

                  The squirrel recognizes it as a note about how to code two red circles -- one on top of the other.  So it goes for several hours -- the gray squirrel digging up the brown squirrel's notes and studying them, and burying them again.  Then it scurried away to its own secret place, where it continued studying its own notes. 

                  The next day, all the squirrels took the coding test.  The day after that, the coding teacher -- a giant beige squirrel -- posted all the grades on the big oak tree.  The gray squirrel was pleased to see its name at the top of the list.  The brown squirrel's name was just below -- on the second line.  The giant beige teacher squirrel shook the gray squirrel's hand and gave it a bag containing two hundred acorns.

                  "Well done," said the teacher squirrel.  "You've earned your bonus acorns."

                  But all that week, the gray squirrel couldn't sleep.  It felt bad about what it had done.  It wasn't exactly stealing -- but looking at someone's code without permission just felt wrong.  
                  
                  On the night before the next coding test, the gray squirrel crept out in the middle of the night and buried the two hundred acorns in the brown squirrel's secret place.  Not only that, the gray squirrel also dug up all of its own notes, copied each one, and buried the new notes in the brown squirrel's secret place.  

                  The next day, they took the test.  And the day after that, the beige squirrel posted the results on the oak tree.  The gray squirrel was certain that, this time, the brown squirrel would be at the top of the list.  But no.

                  "Well done," said the teacher squirrel to the gray squirrel.  "You've earned two hundred more acorns."

                  Now the gray squirrel felt even worse.

                  So it went for the rest of the month.  The gray squirrel kept trying to make things right by burying more notes for the brown squirrel to find -- hoping that the brown squirrel would finally be at the top of the list.  But the brown squirrel always came in second.  And the gray squirrel always came in first -- earning more and more acorns.

                  One day, when the gray squirrel was burying more notes for the brown squirrel to find, it heard a rustling in the leaves overhead.    Suddenly, the brown squirrel lept down and shouted, "Caught you!  I @i{knew} someone had found my secret place.  I kept finding notes that I didn't remember writing."

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

                  "Nope," said the teacher.  "I became the best coding teacher in the forest because  I @i{taught} the most.  Brains learn best when they teach.  When you were burying notes for each other to find, you were teaching each other.  That means you @i{were} studying.  In fact, teaching is the best kind of studying: whoever teaches the most that learns the most."

                  From that day forward, the gray squirrel and the brown squirrel agreed to take turns teaching each other and their fellow squirrels -- sharing their notes instead of burying and hording them.  The grades on the next test were so high that the teacher handed out two hundred bonus acorns to @i{all} the squirrels in the class.  

                  @(question-section
                      (comprehension-questions
                        '("What is open source software?" 
                          "Code that is written and given freely to other coders."))

                      (creativity-questions
                         "Who can share an example of a time that teaching something helped them learn it?"
                         "How does teaching others relate to teamwork?"
                         "When you are learning a new language, why is it better to teach others than to learn on your own?"
                         "Why do brains learn better when they teach?"
                         "What are the benefits of open source software?"))

                }))


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



