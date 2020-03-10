#lang at-exp racket

(provide teach-the-team-fable) 

(require 
 website/bootstrap
 website-js/components/accordion-cards
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

(module+ test
  (require rackunit)
  
  (teach-the-team-fable))


(define (teach-the-team-fable)
  (with-tags (list fable code-of-awesomeness meta-classroom teamwork)
    (story-mode "Teach the Team Fable" 10
                "A Code of Awesomeness fable about the value of teaching others, and the paradoxical pitfall of hording ones knowledge."
                (story-text (teach-the-team-fable:snapshot)
                            (embedded-stories (teach-the-team-fable:highlights)
                                              (teach-the-team-fable:prose))
                            (teach-the-team-fable:questions)
                            (teach-the-team-fable:tips)
                            ))))

(define (teach-the-team-fable:tips)
  (tips "Try pausing the story after revealing the grades and asking the students why Wolf and so many of the other animals did better than Bear."
        (list "Before you start, you can let the students pick the characters. Use these characteristics as guides:"
              (ul (li "(Bear): works alone, smart")
                  (li "(Wolf): a team player, smart"))
              "There are other characters throughout the story (Teacher, other students) -- ask the students for new animals anytime you need one!")))

(define (teach-the-team-fable:snapshot)
  (summary-and-goals
   "Introduce the TEACH THE TEAM Code to the Code of Awesomeness. Explore the values and ideas that this Code encompasses."
   (list "Add a new Code to the Code of Awesomeness: Teach the Team!"
         "Discuss the benefits of sharing your knowledge."
         "Set up a classroom norm: help each other out!"
         "Relate the abstract concept (Teach the Team) to tangable actions and experiences through story."
         "Prepare for the Code Of Awesomeness Motto Creation Game Mode")))

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
