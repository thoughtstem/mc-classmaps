#lang at-exp racket

(provide human-input-output-story
         debugging-a-pizza
         ;debugging-a-cat
         debugging-stories
         intro-to-systems-story
         input-output-stories
         open-source-fable
         hacking-all-around
         all-code-concept-stories)

(require 
 website/bootstrap
 website-js/components/accordion-cards
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering
 (only-in 2htdp/image bitmap beside square))


;==== story collections: ADD HERE if wanted to provide to story mode page =====
;also will run test

(define (debugging-stories)
  (list (debugging-a-pizza)))

(define (input-output-stories)
  (list (human-input-output-story)
        (intro-to-systems-story)))


(define (all-code-concept-stories)
  (flatten (list (debugging-stories)
                 (input-output-stories)
                 (open-source-fable)
                 (hacking-all-around))))


(module+ test
  (require rackunit)

  (all-code-concept-stories))




; ==== DEBUGGING stories ====

(define standard-debugging-questions
  (list
    (comprehension-questions
      "What was the hypothesis?"
      "What does ___ do to test it?") 
    (creativity-questions
      "What reasonable hypotheses might ___ form now?")))

;Wrap the story in a debugging-related frame...  Can reuse with an i/o frame...
;   Possibly interleave questions in the story (not hard, because the sub-story structure can be fixed)


(define (debugging-a-pizza
          #:intro (intro "")
          #:intermission (intermission "")
          #:outro (outro "")
          #:ch1-questions (ch1-questions #f)
          #:ch2-questions (ch2-questions #f)
          #:ch3-questions (ch3-questions #f))
  (with-tags
      (list cs-concept k2 3rd-5th middle-school high-school)

    (story-mode "Debugging the Pizza" 15
                "Mia uses a debugging process to figure out why the pizza suddenly tastes like soap." 
                (story-text (debugging-a-pizza:snapshot)
                            (debugging-a-pizza:tips)
                            intro
                            (embedded-stories (debugging-a-pizza:highlights))
                            (embedded-stories (debugging-a-pizza:ch1 ch1-questions)) 
                            intermission
                            (embedded-stories (debugging-a-pizza:ch2 ch2-questions)) 
                            (embedded-stories (debugging-a-pizza:ch3 ch3-questions)) 
                            outro
                            (debugging:ending-questions)
                           ))))

(define (debugging-a-pizza:snapshot)
  (summary-and-goals
   "Learn about the debugging process in a non-computer frame -- pizza!"
   (list "Define bug, debug"
         "Investigate the subtle difference between problem-solving and debugging (debugging often involves FINDING the problem!)"
         "Practice our own debugging skills"
         "Get comfortable with the idea of bugs and debugging as part of the coding process")))

(define (debugging-a-pizza:tips)
  (tips "For a shorter story, take out some of the hypotheses/tests."
        "Use the name of a student in the room instead of Mia."
        "Ask students to create their own hypotheses -- even tests (you give the result)."
        "Don't forget to engage with questions -- at the end and throughout!"))

(define (debugging-a-pizza:highlights)
  (story-mode "Debugging a Pizza: Story At A Glance" 5
              "Plot points for ad-libbed telling of the Debugging a Pizza story."
              @story-text{
                          @ul[@li{Mia's excited -- tonight her dad is ordering pizza for dinner.}
                              @li{But when she takes her first bite, it tastes like SOAP!}
                              @li{Mia's brother tries it -- he thinks it's fine...}
                              @li{Mia needs to figure out what is going on/debug her pizza.}
                              @li{Debugging attempt #1 --
                                @ol{@li{Hypothesis: Mia's brother is tricking her.}
                                    @li{Test: Ask him (he's a very bad liar, she can always tell).}
                                    @li{Result? He isn't tricking her.}}}
                              @li{Debugging attempt #2 --
                                 @ol{@li{Hypothesis: Mia's brother doesn't know better (he eats wierd stuff...)}
                                     @li{Test: Mia's dad tries it.}
                                     @li{Result? He thinks it's delicious.}}}
                              @li{Debugging attempt #3 --
                                  @ol{@li{Hypothesis: Mia's tastebuds are wrong.}
                                      @li{Test: Mia tries other foods.}
                                      @li{Result? Everything tastes normal... }}}
                              @li{Debugging attempt #4 --
                                  @ol{@li{Hypothesis: It's not all of the pizza, just one part.}
                                      @li{Test: Mia tries each part of the pizza.}
                                      @li{Result? It's the sauce! Specifically, green specks in the sauce...}}}
                              @li{Mia asks her dad what the green specks are.}
                              @li{It's cilantro! Some people, like Mia's mom, taste soap in cilantro -- it's genetic!}
                              @li{Mia's dad promises never to get pizza with cilantro again.}
                              ]
 }))

(define (debugging-a-pizza:ch1 questions) 
  (story-mode "Debugging the Pizza - Intro" 5
              "Mia discovers that pizza no longer tastes good.  It's the end of the world." 
              @story-text{
              Wednesday is Mia's favorite day -- because it's pizza night.  Every Wednesday, instead of cooking, Mia's dad orders a different kind of pizza.  It's not that Mia doesn't like her dad's cooking.  It's just that pizza is her favorite food and always will be, forever.  Cheese, pepperoni, vegetable, meatball -- the kind of pizza didn't matter.  They were @i{all} her favorites.

              Her mouth has been watering all day.  When the doorbell rings, she calls, "Dad!  The pizza is here." He takes forever to come downstairs.  It feels like it takes years for him to pay the pizza delivery man, and another few years before he finally places the giant pizza box on the kitchen table and announces:

              "Dinner is served."

              Mia snatches up a slice and takes it to her room to eat it while she plays video games with her twin brother.  She has a video game controller in one hand and a slice of pizza in the other.  So does her brother.

              "Ready to lose?" says her brother, starting a racing game with his free hand and taking a bite with the other.

              "I never lose," she replies as she takes her first big bite of pizza.

              She chews as the race begins.  At first, her car surges ahead -- but suddenly she freezes, no longer chewing.  The taste in her mouth is @b{terrible}!   It's as if someone covered the whole pizza in soap.  She drops her video game conroller.

              "Shomthong's wong with my pizza!" she mumbles with her mouth full.  
              
              Dropping the video game controller on the floor, she runs to the bathroom, hearing her brother call after her:

              "You're just mad because you know I'm going to win!"  

              Mia spits out the bite of pizza and examines the slice carefully under the bathroom light.  It looks normal.  She sniffs it.  It smells normal.  She takes a smaller bite this time.   

              Sure enough, though, as she begins to chew, it tastes like her mouth is full of soap.  She has to spit the bite into the trash. 

              She marches back into her room and switches off the video game.

              "Hey!" her brother says.  He's almost done with his own slice of pizza by now.

              "Taste this," she demands, giving him her slice.  "There's something wrong with my slice."

              Cautiously, he tastes takes it, sniffs it, and bites into it. 

              "It tastes fine to me," he says.  "I'll eat it if you don't want it."  [Need another beat...]

              @i{What's happening?} she wonders. @i{I must debug my pizza...} 

              @questions }))

(define (debugging-a-pizza:ch2 questions) 
  (story-mode "Debugging the Pizza - Debugging" 5
              "Mia makes several attempts to debug her pizza." 
              @story-text{
                @b{First Debugging Attempt}

                Mia_'s first thought is that her brother is playing a trick on her.   "Is this another one of your pranks?" she demands.

                His eyes go wide.  "Me prank @i{you}?  You're the one who always pranks @i{me}!"

                "Yeah, that's true," she says.  

                "Do you want me to pinky swear?" he asks, holding out his pinky.
 
                "That won't be necessary," she says.  She can always tell when he's lying because he blushes when he does.  He was definitely telling the truth though.

                @i{Hmmm,} she wonders, @i{Why would the pizza taste like soap to me but not to him?}

                @standard-debugging-questions

                @b{Another Debugging Attempt}

                It occurs to Mia that although her brother might not be lying, he might simply be wrong and not know it.  Maybe he just doesn't @i{realize} that the pizza tastes bad.  One time, he spent an entire week eating nothing but pickles.  Another time, he drank an entire bottle of ketchup on a dare.

                "I'll be back," she says, taking her pizza with her and marching to her dad's room.  As usual, he's doing work at his desk.  "Dad," she says, "I need you to try this pizza."

                "Mia, you know I'm on a diet," he says.

                "Dad! Please!" she begs.  "There's something wrong with it.  It tastes all weird."

                Sighing, he takes the pizza, sniffs it, and takes a tiny bite.  Mia holds her breath as she waits -- expecting him to spit it out. 

                Slowly, he swallows, sniffs the pizza again, and takes another bite.

                "Dad!" she cries.  "What are you @i{doing}?"

                "It tastes great," he says, turing back to his comptuer. "If you don't want it, just give it to your brother."

                Stunned, she leaves the room, taking the mysterious pizza with her.

                @standard-debugging-questions

                @b{Yet Another Debugging Attempt}

                Her brother might not be able to taste the difference between soap and pizza, but her dad was practically a professional chef.  He could taste food and tell you all of its ingredients without even seeing the recipe.
                
                There was only one conclusion she could draw.  The bug must not be in the pizza.  It must be in @i{her}!

                Panicked, she ran to the kitchen.  She put the slice of pizza on the table and yanked the refrigerator door open.  She pulled out a jar of pickles, some leftover cake from her dad's birthday, and some leftover meatballs from yesterday's dinner.

                One by one, she tasted each of them.  The bite of pickles tasted like pickles.  The bite of cake tasted like cake.  And the meatballs tasted like meatballs.

                @i{Maybe I'm cured,} she thought.  But when she tasted the pizza again... it tasted like soap.  She had to spit it into the trashcan yet again.

                @standard-debugging-questions

                @questions
              })) 

(define (debugging-a-pizza:ch3 questions) 
  (story-mode "Debugging the Pizza - Fixing the bug" 5
              "Mia finally debugs her pizza." 
              @story-text{
                @b{Final Debugging Attempt}

                @i{This is my favorite food of all time,} thinks Mia_.  @i{There is no @b{way} I'm going to bed tonight without solving this mystery.}

                Suddenly, it occurs to her that maybe it's not the @i{whole} pizza that tastes like soap -- but only part of it.  She puts the pizza on a plate and gets a knife from the drawer.  She cuts off a bit of the crust, a scrap of cheese, and a single pepperoni.


                She puts the crust in her mouth and begins to chew, waiting for the soap taste.  But the crust tastes like crust.

                She puts the pepperoni in her mouth and begins to chew, waiting for the soap taste.  But the pepperoni tastes like pepperoni.

                She puts the scrap of cheese in her mouth and begins to chew, waiting for the soap taste.  But the cheese tastes like cheese -- or @i{almost} like it.  The taste of soap is faint, but it's there. 

                With the fork, she takes all of the cheese off of the pizza, revealing the tomato sauce beneath.  She scoops up a bit of the sauce and puts it in her mouth.  The moment she does, she gags on the soap taste and must spit the sauce into the sink.

                She looks very closely at the pizza and notices that there are little specks of green inside the red sauce.  They smell just fine, but she knows better than to put them in her mouth again.  Gross.   

                She takes the cheeseless pizza upstairs to her dad's room again and says, "Dad, I figured it out.  It's the sauce."

                "What's the sauce?"

                "That's where the soap is.  What are these green things?"

                Her dad takes the pizza and holds it under his desk lamp, looking very closely.  "It's cilantro." 

                "What kind of soap is that?" she asks.  "And why did they put it on the pizza?"

                "It's not soap," says her father, chuckling.  "It's a kind of spice.  It can @i{taste} like soap to some people, though.  It's genetic.  Your mom can't stand the stuff either.  You can ask her about it when she gets home."

                "What is genetic?" Mia she says.  

                "Inside everyone's body is something called a genetic code," he says.  "It's like a code that says what color hair you'll have, what color eyes, whether you'll be tall or short, and whether or not cilantro tastes like soap or not."
                
                "Does that mean there's a bug in my code?" she says.

                Her father laughs.  "You could call it a bug, or you could call it a super power.  Basically, @i{your} tongue is able to detect a chemical in the cilantro that most people can't taste.  It's always there -- but people like me and your brother."

                "I'll consider it a super power," she says.  "But can we @i{never} get pizza with cilantro again?  Please!"

                Her father nods.  "I promise."
                

              }))

(define (debugging:ending-questions)
  (list
   (comprehension-questions
    "What is a \"bug\" in coding?"
    "What does it mean to \"debug\"?")
    (creativity-questions
     '("How are debugging and problem-solving the same? How are they different?"
       "Debugging often involves similar skills, but a big part of debugging is finding the cuase of the problem, which isn't always included in problem-solving.")
     "When is a time you debugged something? On the computer? Off the computer?"
     "What skills do you need to be the best debugger?")))





;currently not provided, unfinished
(define (debugging-a-cat)
  (story-mode "Debugging the Cat" 5
              "____ uses a debugging process to figure out why the cat won't shut up."
              ;The cat won't shut up.  But no one knows what it wants.  Food?  Nope.  Scritches?  Nope.  Is it sick?  Nope.  Weird noises that only it can hear...
              @story-text{

              Set up problem and why it matters.
              
              Try 1 - fail, but learn
              Try 2 - fail, but learn
              Try 3 - fail, but learn

              ---

              Epiphany

                  
              }))


;==== INPUT/OUTPUT stories ====

(define (human-input-output-story)
  (with-tags
      (list k2 3rd-5th cs-concept)
    (story-mode "Thinking about Inputs and Outputs" 5
                "Learn about inputs and outputs on a computer, then map them on to a human!"
                @story-text{
                            Outline
                            @ul[@li{Computers have inputs -- how they receive information -- and outputs -- how they give information.}
                                @li{With the help of students, list computers INPUTS:
                                  @ul[@li{keyboard}
                                      @li{mouse/trackpad}
                                      @li{camera}
                                      @li{microphone}
                                      @li{USB port}
                                      @li{...}]}
                                @li{With the help of students, list computer OUTPUTS:
                                  @ul[@li{screen}
                                      @li{speakers}
                                      @li{USB port}
                                      @li{...}]}
                                @li{What about HUMANS? What are our inputs -- ways to recieve information -- and outputs -- ways to give information?}
                                @li{With the help of students, list human INPUTS (the 5 senses):
                                  @ul[@li{eyes}
                                      @li{ears}
                                      @li{nose}
                                      @li{mouth}
                                      @li{skin}]}
                                @li{With the help of students, list human OUTPUTS:
                                  @ul[@li{voice}
                                      @li{fingers (pointing)}
                                      @li{hands (sign language)}
                                      @li{whole body (body language, dance)}
                                      @li{face (expression)}
                                      @li{writing}
                                      @li{drawing}
                                      @li{...}
                                      ]}]
 })))

;could split into multiple stories
(define (intro-to-systems-story)
  (with-tags
      (list meta-cognition cs-concept k2 3rd-5th middle-school high-school)
    (story-mode "A System-atic World" 10
                "Learning about systems and thinking about everyday things as systems."
                (story-text 
                            (intro-to-systems-story:snapshot)
                            (embedded-stories (intro-to-systems-story:highlights))
                            (intro-to-systems-story:questions)
                            (br)
                            (intro-to-systems-story:tips)
                            (intro-to-systems-story:suggestions)
                            ))))

(define (intro-to-systems-story:snapshot)
  (summary-and-goals
   "Get the students to think creatively about systems by viewing everyday things as systems of input and outputs."
   (list "Define input, output and system"
         "Increase understanding of the concepts above by apply them to objects and situations both techincal and completely untechnical!"
         "Gain more technical knowledge and greater understanding of computers"
         "Practice good discussion skills like listening, talking one at a time, being respectful, and learning from each other.")))

(define (intro-to-systems-story:highlights)
  (story-mode "A System-atic World: Story at at Glance" 10
              "Points for ad-libbed discussion of the Input/Output Systems in our World story."
              (story-text
               (steps (list "Ask students: Who can define the word " (b "system") "?")
                      (list "Many definitions, but as used in our context: "
                            (b (i "A network of interdependent things working as one whole"))
                            " (define the words within this definition as needed!)")
                      (list "Pick an example system or two to explore (laptop, factory, restaurant, person...).")
                      (list "Guide the students through breaking the example system down into parts:"
                            (ol (li "A " (b "laptop") " is a system of hardware and software -- "
                                    (i "CPU, RAM, screen, operating system, apps, keyboard..."))
                                (li "A " (b "factory") " is a system of machines and/or people -- "
                                    (i "makers, assemblers, quality-checkers, testers..."))
                                (li "A " (b "restaurant") " is a system of people and equipment -- "
                                    (i "customers, waiters, cooks, stoves, food, dishes..."))
                                (li "A " (b "person") " is a system of systems! -- "
                                    (i "circulatory, digestive, nervous, immune, respiratory..."))))
                      "An entire system can be defined by its input(s) and output, sometimes multiple inputs/outputs."
                      (list "Guide the students through defining the input(s)/output(s) of the example:"
                            (ol (li (b "Laptop") " -- inputs: power, user interaction (key strokes, mouse etc.) data (usb, internet, downloads) -> outputs: screen images, printed pages, sound, lights, data (usb, internet, uploads)")
                                (li (b "Factory") " --  raw materials -> product")
                                (li (b "Restaurant") " -- hungry customers, money -> satisfied customers (hopefully!), food")
                                (li (b "Person") " -- food, water, sensory input -> waste, thoughts, ideas, words, movement ...")))
                      (list "Each " (i "part") " of a system can "(i "also") " be broken down into it's input/output(s).")
                      (list "Guide the students through defining the input/outputs of the example. For example a laptop has:"
                            (ol (li (b "Mouse") " -- physical movement -> cursor movement, clicks, etc")
                                (li (b "Keyboard") " -- key presses / text, shortcuts, etc")
                                (li (b "Screen") " -- code data / images")
                                (li (b "CPU") " -- (reading) memory data / (writing) memory data")
                                (li "etc")))
                      "Repeat with other Systems.")
               )))

(define (intro-to-systems-story:tips)
  (tips (list "Drawing the system can help explain the different parts. Here are some example diagrams: "
              (ul (li
                   (a href: "https://deseng.ryerson.ca/dokuwiki/_detail/design:elevatorsystemdiagramgood.png?id=design%3Asystem_diagram" "Input/Output Diagram: Elevator"))
                  (li (a href: "https://deseng.ryerson.ca/dokuwiki/_detail/design:toasterarchitecture.jpg?id=design%3Asystem_diagram" "System Diagram: Toaster"))))
        "After this discussion, you can break students into smaller groups and have each group diagram a different thing as a system."
        "Try to break one of the games you have played recently down through the system perspective (what parts were everyone playing? what where their input/outputs? What was the output of the whole game (goal)?)"))

(define (intro-to-systems-story:suggestions)
  (accordion-card #:header "More System Examples!"
                  "Running out of ideas? Try these on for size!"
                  (ul (li "A School")
                      (li "An Oven")
                      (li "A Kitchen")
                      (li "A Library")
                      (li "An Amusement Park")
                      (li "A Grocery Store")
                      (li "A Car Wash"))))

(define (intro-to-systems-story:questions)
  (question-section
   (comprehension-questions
    '("How do we define the word System in this context?"
      "A network of interdependent things working as one whole.")
    '("How do inputs and outputs relate to systems?"
      "A system has inputs and outputs, as do the elements within a system")
    '("Can systems be nested? As in, can one system have another system within it?"
      "Yes!"))
   (creativity-questions
    "Who can think of something that CANNOT be seen as some kind of system? Can anyone prove that IS a system?"
    "How does this exercise (breaking down everyday things as systems) help us be better coders?")))


;====== OPEN SOURCE CODE stories ====

(define (open-source-fable)
  (with-tags
      (list fable cs-concept wip)
    (story-mode "Open Source Code: A Fable" 10
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

                })))

; HACKING stories

(define (hacking-all-around)
  (with-tags
      (list cs-concept discussion-based 3rd-5th middle-school high-school)
    (story-mode "Hacking All Around" 15
                "An introductory, discussion-driven conversation about hacking."
                #:credit "Coach Emily & Coach Mona, San Diego, CA"
                (story-text (hacking-all-around:snapshot)
                            (embedded-stories (hacking-all-around:highlights)
                                              (hacking-all-around:prose))
                            (hacking-all-around:tips)))))

(define (hacking-all-around:snapshot)
  (summary-and-goals
   "Lead a discussion on hacking, ethical/unethical hacking, and how to protect yourself from malicious hackers."
   (list "Define hacking, white-hat hacking and black-hat hacking"
         "Increase understanding of digital security and safety"
         "Dive in to student questions about hacking and digital safety/security"
         "Practice good discussion skills like taking turns speaking, staying on topic, listening, and respecting thoughts/ideas/questions of others")))

(define (hacking-all-around:highlights)
  (story-mode "Hacking All Around: Highlights" 15
              "Quick summary for reminders on how to tell this story"
              (story-text (steps (list "Coach asks the students the following questions and guides a discussion:"
                                       (ol @li{What is hacking?}
                                           @li{Why do people do it?}
                                           @li{What places and things could be hacked?}
                                           @li{How can you protect yourself from malicious hackers?}))))))

(define (hacking-all-around:prose)
  (story-mode "Hacking All Around: Full Text" 15
              "An introductory, discussion-driven conversation about hacking."
              (story-text
 (coach-asks "What is hacking?" #:right-answer "We mostly use this term to refer to the act of digital \"breaking and entering\" -- often to steal or change information stored digitally. But hacking isn't inherently bad! Many legitimate computer programmers refer to themselves as hackers who creatively enage with, alter and find new ways of using software. The terms \"white hat\" hacker and \"black hat\" hacker are often used to discriminate ethical hacking from unethical hacking.")
(br) (br)
 (coach-asks "Why do people hack?" #:example-answers (list "To take people's information" "To steal money" "To make new fun games out of existing games" "For revenge" "As a job, to test security" "To adapt tech for more people/more uses"))

 (coach-asks "What places and things can be hacked?" #:example-answers (list "personal computers" "banks" "stores" "any company" "printers" "video games" "online accounts" "governments"))

 (coach-asks "How can you protect yourself from malicious hackers?" #:example-answers (list "strong passwords that you keep secret" "using different passwords" "being thoughtful about what companies/sites/people you give information to" "being careful about what you post on social media in photos, etc" "virus protection software like McAfee, Norton, etc.")))))

(define (hacking-all-around:tips)
  (tips
   "Likely, students will want to learn to hack after this discussion. You can deflect
this desire by reminding them that hackers have to be excellent at reading code and
writing code to hack! So what they are doing in class is building the skills to be a hacker."
   (list "If students don't know what hacking is, the coach can use the following metaphor(s):"
         (ul @li{Imagine a house. This house is your code- and you want to keep your stuff inside
your house. A hacker is someone who walks around your house, looking for a
mouse hole in a wall. They use the house to slip in a wire, and open your front
door. Then they steal all of your stuff.}
             @li{But some hackers are good people. They’re like inspectors. You can hire them to
come look for all the mouse holes and cracks in your house. Then, since you
know those holes are there, you can fix them.}))
   (list "Check out " (a href:"https://xkcd.com/936/" "this XKCD webcomic") " on strong passwords, and some " (a href:"https://www.explainxkcd.com/wiki/index.php/936:_Password_Strength" "explanation for the comic here") ".")
   "It is important not to let student obsess on the negative in this dicussion; be sure to include positive examples of hacking/hackers in the dicussion often."))

