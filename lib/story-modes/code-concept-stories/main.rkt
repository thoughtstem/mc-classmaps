#lang at-exp racket

(provide human-input-output-story
         debugging-a-pizza
         ;debugging-a-cat
         debugging-stories
         intro-to-systems-story
         input-output-stories
         all-code-concept-stories)
;add story to collections (bottom of page) if wanting it to appear of stories page online

(require 
 website/bootstrap
 website-js/components/accordion-cards
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering
 (only-in 2htdp/image bitmap))




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
                @story-text{
                            @(debugging-a-pizza-tips)
                            @intro
                            @(embedded-stories (debugging-a-pizza:highlights))
                            @(embedded-stories (debugging-a-pizza:ch1 ch1-questions)) 
                            @intermission
                            @(embedded-stories (debugging-a-pizza:ch2 ch2-questions)) 
                            @(embedded-stories (debugging-a-pizza:ch3 ch3-questions)) 
                            @outro})))

(define (debugging-a-pizza-tips)
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
    (story-mode "Input/Output Systems in our World" 10
                "Define a System and practice seeing everyday things as a System."
                (story-text (embedded-stories (intro-to-systems-story:highlights))
                            (intro-to-systems-story:tips)
                            ))))

(define (intro-to-systems-story:highlights)
  (story-mode "Input/Output Systems in our World: Story at at Glance" 10
              "Points for ad-libbed discussion of the Input/Output Systems in our World story."
              (story-text
               (steps (list "Ask students: Who can define the word " (b "system") "?")
                      (list "Many definitions, but as used in our context: "
                            (b (i "A network of interdependent things working as one whole"))
                            " (define the words within this definition as needed!)")
                      (list "Pick an example system or two to explore (laptop, factory, restaurant, person...).")
                      (list "Guide the students through breaking the example system down into parts:"
                            (ol (li "A " (b "laptop") " is a system of hardware and software parts -- "
                                    (i "CPU, RAM, screen, operating system, apps, keyboard..."))
                                (li "A " (b "factory") " is a system of machines and/or people -- "
                                    (i "makers, assemblers, quality-checkers, testers..."))
                                (li "A " (b "restaurant") " is a system of people and equipment -- "
                                    (i "customers, waiters, cooks, stoves, food, dishes..."))
                                (li "A " (b "person") " is a system of systems! -- "
                                    (i "circulatory, digestive, nervous, immune, respiratory..."))))
                      "An entire system can be defined by input/output, sometimes multiple inputs/outputs."
                      (list "Guide the students through defining the input(s)/output(s) of the example:"
                            (ol (li (b "Laptop") " -- input: power, data / output: data")
                                (li (b "Assembly Line") " -- input: raw material / output: product")
                                (li (b "Restaurant") " -- hungry customers / satisfied customers (hopefully!) OR money / food")
                                (li (b "Person") " -- food, water / waste OR sensory information / thoughts, ideas ...")))
                      (list "Each " (i "part") " of a system can "(i "also") " be broken down into it's input/output(s).")
                      (list "Guide the students through defining the input/outputs of the example:"
                            (ol (li (b "Mouse") " -- physical movement / cursor movement, clicks, etc")
                                (li (b "Keyboard") " -- key presses / text, shortcuts, etc")
                                (li (b "Screen") " -- code data / images")
                                (li (b "CPU" " -- memory data / memory data"))
                                (li "etc")))
                      "Repeat with other Systems.")
               )))

(define (intro-to-systems-story:tips)
  (tips (list "Drawing the system can help explain the different parts."
              (accordion-card
               #:header "Click for Example Diagram."
               (write-image (bitmap "../../images/example-system-diagram.png"))))
        "After this discussion, break students into smaller groups and have each group diagram a different thing as a system."
        "For older groups, you can go into systems inside systems: since each part of a system has an input/output and so do systems themselves, can't a system be part of a larger system?"
        "Try to break one of the games you have played recently down through the system perspective (what parts were everyone playing? what where their input/outputs? What was the output of the whole game (goal)?)")) 

;==== story collections: ADD HERE if wanted to provide to story mode page =====
;also will run test

(define (debugging-stories)
  (list (debugging-a-pizza)))

(define (input-output-stories)
  (list (human-input-output-story)
        (intro-to-systems-story)))


(define (all-code-concept-stories)
  (flatten (list (debugging-stories)
                 (input-output-stories))))


(module+ test
  (require rackunit)

  (all-code-concept-stories))
