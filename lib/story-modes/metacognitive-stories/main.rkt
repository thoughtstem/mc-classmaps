#lang at-exp racket

(provide metacognitive-stories ;add new stories to this list (defined at end of file) for testing and for release onto website's story page
         rethinking-bugs
         a-path-in-your-brain-story
         coder-skills-story)


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

;==== A Path In Your Brain story ====

;TODO add a SCIENCE section, explaining neurons, pathways, neuroplasticity, etc
(define (a-path-in-your-brain-story)
  (with-tags (list meta-cognition)
  (story-mode "A Path in Your Brain" 10
              "A metaphor for learning in your brain. Or: why it takes so darn long to learn something new."
              (story-text (a-path-in-your-brain-story:tips)
                          (embedded-stories (a-path-in-your-brain-story:highlights))
                          (embedded-stories (a-path-in-your-brain-story:prose))
                          (br)
                          (a-path-in-your-brain-story:questions)
                          ))))

(define (a-path-in-your-brain-story:tips)
  (tips "Choose a volunteer: use this person's name instead of Joe. Use something that they are trying to learn instead of German (piano, algebra, soccer, CODING).  You can even bring them up to sit next to you and keep pointing at their brain to keep reminding the audience that this is happening inside a brain."
        "You can illustrate this story as you tell it -- drawing the cottage, clearing and paths on a whiteboard, widening the lines or erasing them as fits the story."
        "Don't forget to ask questions: at the end and throughout!"))

(define (a-path-in-your-brain-story:highlights)
  (story-mode "A Path in Your Brain: Story at a Glance" 5
              "Plot Points fro ad-libbed telling of the A Path in Your Brain story."
              (story-text
               (steps
                (list (b "Joe") " is someone much like you (the audience). But he is just starting German class.")
                "Let's look inside Joe's brain while he does his German homework."
                (list "Imagine his brain is a forest, and there's a " (b "Tiny Joe") " trying to make a new trail through it.")
                (list "It's " (b "difficult") " for Tiny Joe to get through the forest.")
                "Just like it's difficult for Real Joe to do the homework."
                (list "Over time, as Real Joe learns more German, Tiny Joe clears a " (b "wider, better trail") ".")
                (list "After being sick and " (b "not practicing") " for a time, Real Joe has a hard time doing what had been easy before.")
                (list "The trail in Joe's brain had become a bit " (b "overgrown") ".")
                "With practice, the skill returned, and the trail cleared."
                (list "Over many years of German classes and practice, Tiny Joe's trail in Real Joe's brain is made into a " (b "long, clear, easy-to-travel path") " and Real Joe can use German fluently.")
                ))))

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

                            Everytime Tiny Joe journey's down that same trail, it gets easier. There are fewer rocks and bushes in his way. He has built on that bridge across the river so that it's much safe and easier to cross. He has made the path wider and flatter by walking down it so many times.

                            Real Joe is finding it easier and easier to remember the German vocabulary and grammar. Now he doesn't have to stare at his textbook the whole class -- he can even have a whole (short) conversation in German without needing his notes once!

                            One day, when Joe gets the flu, he misses two whole weeks of German class. He doesn't pick up his German textbook @i{once} in those two weeks. When he comes back to class, and Tiny Joe goes traipsing down that trail again, he struggles a bit! Real Joe is frustrated; he could have this conversation @i{easily} two weeks ago!

                            But in those two weeks, when Joe didn't think about German @i{once}, the trail in his brain-forest started to grow over with little bushes and vines. A few of those stones cam tumbling back. A rainstorm roughed up the nicely trampled dirt. It was harder for Tiny Joe to walk that path; and harder for Real Joe to remember his German!

                            After a little extra practice, Tiny Joe had that trail cleared nicely again and continued his progress of widening it and making it better. Tiny Joe added some nice clear signs showing the way, built up that bridge, and made the trail twice as long as it was before. The next time Real Joe takes two weeks of vacation from his German class, he shows off his German to his grandparents and spent some time reviewing his vocabularly list. He has hardly any trouble coming back to class after the break, this time!
                            
                            @(hr)
                            Several years of German classes later, Joe is quite @b{fluent} in the language. He can have long conversations in German with his classmates and with his cousins who live in Germany and speak German every day. Joe can read some German books, write essays in German -- he even @i{dreams} in German sometimes!

                            The trail in Joe's brain is wide, welcoming and inviting. It's so easy to travel that Tiny Joe can run down it with his eyes closed! It's hard to remember that there was @i{ever} a time that the trail didn't exist at all. 
                
 }))

(define (a-path-in-your-brain-story:questions)
  (question-section
   (comprehension-questions
    "What made the trail in Joe's brain-forest easier to travel?"
    "When did the trail more difficult again?"
    '("What real thing in your brain does the forest trail in this story represent?"
      "A neural pathway -- connections between neurons in the brain")
    '("What real thing in your brain does \"Tiny Joe\" represent?"
      "Electricity and neurotransmitters -- communications between neurons"))
   (creativity-questions
    "When was a time that it felt very difficult or frustrating to learn something new?"
    "What can we learn from this story that we can use in this class?"
    "How can knowing what happens in our brain as we learn help us learn better?")))

;===========

(define (coder-skills-story)
  (with-tags
      (list meta-cognition)
  (story-mode "The Life and Times of a Real Coder" 15
              "What does it really take to be a coder?"
              (story-text "Each Chapter of this story starts by defining a primary " (b "task a coder does") " before generating a list of the " (b "skills required") " for that task, then considering " (b "where else we use those skills") ". The goal being to expand the definition of what it means to be a coder and how everyone can gain from it."
                          (coder-skills-story:tips)
                          (embedded-stories (coder-skills-story:highlights)
                                            (coder-skills-story:prose))))))

(define (coder-skills-story:highlights)
  (story-mode "The Life and Times of a Real Coder: Story at a Glance" 15
              "Plot Points for ad-libbed telling of The Life and Times... story."
              (story-text
               (b "Chapter 1: The Code")
               (steps
                "What does a coder do? -- Write, read, edit and debug code"
                "What skills do we need for that? -- (ex. coding knowledge, problem-solving, organization, logic, computational thinking, creativity...)"
                "Where else are these skills useful? -- (ex. math, writing, homework, art...)")
               (b "Chapter 2: The People")
               (steps
                "What else does a coder do? -- Work with people"
                "What skills do we need for that? -- (ex. communication [verbal, written and visual], teamwork...)"
                "Where else are these skills useful? -- (ex. school projects, sports, job, socially...)")
               (b "Chapter 3: The Coder")
               (steps
                "What else does a coder do? -- Work with own brain"
                "Meaning: \"code\" our brain by learning, \"edit code\" by learning new things, \"debug code\" by finding and fixing false assumptions"
                "What skills do we need for that? -- (ex. grit, self-reliance, curiosity, humility...)"
                "Where else are these skills useful? -- (ex. sports, musical instrument, writing...)")
               (b "In Conclusion")
               (steps
                "It takes a lot of different skills to be a coder"
                "You learn and use these skills everywhere"
                "Like in our stories and games!")
               
                          )))

(define (coder-skills-story:tips)
  (tips "This story is strongly based in discussion. Know what is important to touch on, but also let the students bring up ideas that you may not have thought of before!"
        "If possible, use visual aids/lists to keep the discussion clear and focused. Draw up on a whiteboard and/or even encourage students to draw along!"
        "You can easily split this story by chapter over a class or several classes."))

(define (coder-skills-story:prose)
  (story-mode "The Life and Times of a Real Coder: Full Text" 10
              "What does it really take to be a coder?"
              @story-text{
 @h5{Prologue}

 Who here wants to be some kind of coder when they grow up?  Who @i{might} want to be a coder or do a job that involves coding? Who wants to do something totally different?!

 Let's take a closer look at what it really takes to be the best coder -- all the different things a professional coder does and the skills it takes to be good at them. Some of these things you are already doing -- in this class or elsewhere in your life. Some of them you'll do soon! But all of these skills are valuable for all of you. Now and in the future, no matter what you end up doing!

 @embedded-stories[@(coder-skills-story:ch1)
                   @(coder-skills-story:ch2)
                   @(coder-skills-story:ch3)]

 @h5{Epilogue}

 When we look at all this -- all the stuff a coder does and all the skills we need to do them -- it is a lot! But the good news is that you are building these skills all over the place, not just in this class. Every time you figure out a tough homework problem all on your own, you are using your problem-solving, self-reliance, and perseverance skills. At soccer practice you are building up your teamwork, communication, and grit skills.

 Even in this class, we work on these skills in different ways -- stories and games involving coding, and stories and games that don't seem to have anything to do with computers and coding. We are always improving the skills and knowledge that it takes to be a great coder so you can go on to be the very best coders! Or, you can take these skills and go be awesome at any one of these other things, and more!
               
 }))

(define (coder-skills-story:ch1)
  (story-mode "Chapter 1: The Code" 5
              "What does a coder do? Work with code (obviously!)"
              @story-text{
               @(coach-asks "What does a coder do? (It's not a trick question!)" #:right-answer "Writes code! Also: reads code, edits code and debugs code.")

 How many of you here are coders? If you have every written, read, editted, or debugged code (even one line!) then you are a coder. 
                          
 @(coach-asks "What skills does a coder, like you, need to work with code?" #:example-answers (list "knowledge of the programming language" "problem-solving skills" "organizational skills"  "logical thinking" "computational thinking" "creativity"))
 @(coach-asks "Where else do we use these skills?" #:example-answers (list "organization -> writing essays/books" "logical thinking -> math" "problem-solving -> doing homework" "creativity -> art"))
 }))

(define (coder-skills-story:ch2)
  (story-mode "Chapter 2: The People" 5
              "What else does a coder do? Work with people (sorry, introverts!)"
              @story-text{
                           Coders work with code; that's obvious! But there's more to coding that just writing, reading, editing and debugging the code.

 @(coach-asks "What else does a coder do?" #:right-answer "Communicate with people! Other coders, non-coders (coworkers, users, customers...)")

 Now, professional coders have a bit of a reputation for being introverted -- or even anti-social! But the truth is, to be the best at coding you have to work with other people. Your code is @i{for} people. Other people will use it, build on it, and learn from it! 

 @(coach-asks "What skills does a coder, like you, need to work with other people?" #:example-answers (list "verbal communication skills" "writing skills" "visual communication skills (diagrams)" "teamwork skills"))
 @(coach-asks "Where else do we use these skills?" #:example-answers (list "sports" "class projects" "ANY workplace" "with family/friends"))
 }))

(define (coder-skills-story:ch3)
  (story-mode "Chapter 3: The Coder" 5
              "What else does a coder do? Work with themselves (very meta!)"
              @story-text{
 So far, we have figured out that a coder works with code and works with other people. There is one last part of the coding process that I want to talk about today. It can be the hardest to grasp, and many coders never get this part, but I know you all are ready to figure this out with me.

 @(coach-asks "Can anyone think of another thing a coder works with?" #:right-answer "Themselves and their own brain!")

 A coder is always, always learning. No matter how much experience you have, there is always going to be something you don't know, a bug you have never seen, or a problem you have never solved. To be the best coders, you must code @i{your own brain} -- write new code (learn new things), edit existing code (change your mind when you learn something new), read your code (break down your thinking process), and debug (look for preconcived notions that are leading you off course and reassess them).

 @(coach-asks "What skills does a coder, like you, need to be able to work with their own brain?" #:example-answers (list "grit" "self-reliance" "perseverance" "curiosity" "meta-cognitive skills" "humility" "passion/drive"))
 @(coach-asks "Where else do we use these skills?" #:example-answers (list "sports" "playing an instrument" "research" "writing" "physical creation (building/carpentry/sewing/etc)"))

 }))


;add new stories to this list for testing and for release onto website's story page
(define (metacognitive-stories)
  (list (rethinking-bugs)
        (a-path-in-your-brain-story)
        (coder-skills-story)))

(module+ test
  (require rackunit)

  (metacognitive-stories))

