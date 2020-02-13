#lang at-exp racket

(provide hello-world-story
         hello-world-story:detailed
         first-bug-story
         mars-orbiter-bug-story
         historical-stories)

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering
 website-js/components/accordion-cards)


;collection for testing and posting to stories page

(define (historical-stories)
  (list (hello-world-story)
        (hello-world-story:detailed)
        (first-bug-story)
        (mars-orbiter-bug-story)))

(module+ test
  (require rackunit)

  (historical-stories))



;===== HELLO WORLD STORIES ===

(define (hello-world-story)
  (with-tags
      (list historical cultural)
    (story-mode "\"Hello, World!\"" 5
                "Why do we call the first code we write our Hello World program?"
                @story-text{ @(embedded-stories (hello-world-story:highlights))
                             @(embedded-stories (hello-world-story:prose))
                             @(hello-world-story:code-examples)
 })))

(define (hello-world-story:highlights)
  (story-mode "\"Hello, World!\": Story at a Glance" 5
              "Plot points for ad-libbed telling of the \"Hello World!\" story."
              (story-text (ul
                           @li{The first program a coder writes in a new language is traditionally a @b{Hello World program.}}
                           @li{This tradition comes from computer science textbooks written in the 1970's.}
                           @li{A literal Hello World program prints out the words "Hello, World!" in the terminal.}
                           @li{@i{If possible, show some sample Hello World programs in various languages: samples listed below.}}
                           @li{Nowadays, a Hello World program can be more complex and powerful than it used to be, sometimes with even simplier code.}
                           @li{Sometimes a Hello World program doesn't have anything to do with the words "Hello, World!" but it is still called that as the starting program in a new language.}))))



(define (hello-world-story:prose)
  (story-mode "\"Hello, World!\": Full Text" 5
              "Why do we call the first code we write our Hello World program?"
              @story-text{
               In a moment we will be writing our first lines of code in our language.  We call these lines of code our @b{Hello World program} because of a tradition that started way back in the 1970's (that's 50 years ago!).  This piece of computer science history continues to influence coders today -- coders like you.

               A computer science textbook published in 1978 entitled "The C Programming Language" included the following coding exercise:
               
               @pre{@code{main() {
     printf(\"hello, world\\n\");
}}}
               Even before that, a textbook on the B programming language published in 1972 contained this example:

               @pre{
                    @code{
                      main( ) {
                        extern a, b, c;
                        putchar(a); putchar(b); putchar(c); putchar('!*n');
                      }
                     
                      a 'hell';
                      b 'o, w';
                      c 'orld';
                    }
                  }
               These textbooks were so influential -- specifically "The C Programming Language" -- that these very coding execises started a computer science tradition that is still observed today: when learning a new language, the first program a coder writes outputs the words "Hello, World."

               Now, that code might look completely different from one computer language to another (after all, "Hello, world" can look and sound very different in human languages, right?). For example:

               @coach-fills-in{Project or otherwise display some of the eaxmples listed below.}

               This "Hello, World" tradition is so embedded in coder-culture that even when the first program a coder writes has nothing to do with the words "Hello World" (maybe the code outputs an image, webpage, game, or even blinking LEDs in "the real world" instead of text on the screen!), a coder still might refer to this first program as their Hello World Program. 

               So, as coders and members of this huge community and culture of other coders, we are @i{also} going to call our first program our Hello World Program.

               Are you ready to try it?
 }))

(define (hello-world-story:code-examples)
  (accordion-card #:header "Hello World Program Examples"
                  (story-text
                   "Here are example Hello World programs in a few different languages:"
                   (hr)
                   (ol (li (b "C") " (from the aforementioned 1970's textbook)"
                           @pre{@code{main() {
   printf(\"hello, world\\n\");
   }}})
                       (li (b "Racket") @pre{#lang racket
 "Hello, World!"})
                       (li (b "Python") @pre{print "Hello World"})
                       (li (b "Javascript") @pre{console.log("Hello World");})
                       (li (b "Java")
                           (pre
                            "class HelloWorld {
  static public void main( String args[] ) {
    System.out.println( \"Hello World!\" );
  }
}"))
                       (li (b "Ruby") @pre{puts "Hello, world!"})
                       (li (b "Typescript") @pre{alert('Hello world!');})
                       (li "Find more " (link-to "http://helloworldcollection.de/" "in this online collection") ".")
                       ))))

(define (hello-world-story:detailed)
  (with-tags (list historical cultural middle-school high-school)
    (story-mode "Hello World History" 15
                "About the phrase 'Hello World' in the computer science context, and why you'll see it again and again on your journey to become a coder."
                @story-text{
                  Bev, age 19, arrives to her first college computer science class.  The instructor says, "Welcome!  Today, we're going to write a 'Hello, World' program."

                  Mo, age 7, has been begging his mom to teach him how to code.  Today, she finally says, "Okay, I think you're old enough.  Let's write a 'Hello, World' program."

                  Marlena, age 32, has been coding since she was 15.  She works for Google now.  Her current task is to analyze half a million rows in a database.  She installs Python and writes a "Hello, World" program to verify that she installed it correctly.

                  Ever since 1978, coders have been writing "Hello, World" programs.  Often, that means that they literally write a program that prints "Hello, World".  You can do it yourself right now, if you want:

                  @pre{
                    @code{
                      #lang racket
                      "Hello, World!"
                    }
                  }

                  The tradition started in a rather boring way: One C programming textbook in 1978 used the printing of "hello, world" as an example.  Here's the earliest known "Hello, World!" program now -- in an ancient language called B (which, no joke, was the language that came before C).  This is what inspired the use of "Hello, World!" in that C programming textbook in 1978.

                  @pre{
                    @code{
                      main( ) {
                        extern a, b, c;
                        putchar(a); putchar(b); putchar(c); putchar('!*n');
                      }
                     
                      a 'hell';
                      b 'o, w';
                      c 'orld';
                    }
                  }

                  Since then, the tradition has been carried along by numerous other textbooks and educators.  Because so many programmers write this program as their very first line of code, it forms a kind of common experience among coders.  That cultural truth is important: In a world where coders use hundreds of languages to solve countless problems, coders are an increasingly diverse group of people.  

                  But any coder can say, "Let's write a \"Hello, World!\" program", and other coders will understand what that means.  It forms a kind of common language.

                  You might think that only beginners would write such simple programs -- but the reality is much more complicated than that.  Even expert coders must frequently become beginners again.  Consider Marlena, age 32, who has been coding since she was 15.  She works for Google and is a skilled engineer.  But that doesn't mean she has used Python before.  So she installs Python and immediately writes a "Hello, World!" program -- both to check that she understands how to write in Python and to check to see if she installed Python correctly.  She will learn Python very quickly (because she has spent decades learning how to learn).  But for those first few moments, she is a beginner again.   So she writes, "Hello, World!" again.

                  Some people think that a "Hello, World!" program must specifically print "Hello, World!" -- but that's not true at all.  The original "Hello, World!" program printed "hello, world" -- without the capital letters and without the exclamation point.  And Stephen R. Foster, one of the founding members of MetaCoders wrote his first line of code (in the BASIC) programming language as follows:

                  @pre{
                    @code{
                      PRINT "HELO"
                    }
                  }

                  He was in kindergarten and hadn't yet learned how to spell "Hello".

                  In reality, "Hello, World!" programs aren't really about the words or the puctuation.  They are really about asking the computer to do something very simple -- to make sure everything is working as it should.  Alternative "Hello, World!" programs might light up an LED or produce an audible beep.  
                  
                  If you do print someting in a "Hello, World!" program -- feel free to print whatever you like!

                  @(question-section
                     (comprehension-questions
                       "What language came before C?"
                       "Did the first \"Hello, World!\" program have an exclamation point?"
                       "What is the purpose of a \"Hello, World!\" program?"
                       )
                     (creativity-questions
                       "What kind of \"Hello, World!\" programs could you write that don't print any words?"))
                }
                )))

;=== BUG HISTORY STORIES ====

(define (first-bug-story)
  (with-tags (list historical debugging)
    (story-mode "The First Computer Bug..." 10
                "The story of the moth in Mark II"
                (story-text (first-bug-story:snapshot)
                            (embedded-stories (first-bug-story:highlights)
                                              (first-bug-story:prose))
                            (first-bug-story:questions)
                            (first-bug-story:tips))
                )))

(define (first-bug-story:tips)
  (tips (list "Pull up picture of the "
              (a href: "https://cdn.britannica.com/93/23593-050-99D22EC5/Harvard-Mark-I-Howard-Aiken-ballistics-calculations-1943.jpg" "Harvard Mark I")
              " (not many photos/info about Mark II), and the "
              (a href: "https://en.wikipedia.org/wiki/Grace_Hopper#/media/File:H96566k.jpg" "infamous moth") ".")
        (list "Cool facts about the Harvard Mark I and II:"
              (ul (li "Mark II was completed in 1944")
                  (li "Mark I weighed over 9,000 lbs and was 51 ft long, 8 ft tall and 2 ft wide.")
                  (li "Mark I had 60 sets of 24 switches each to manually enter data.")
                  (li "Mark I took 6 seconds to complete a multiplication task.")
                  (li "Mark II was completed in 1947")
                  (li "Mark II weighed 46,000 lbs!")
                  (li "Mark II took less than a second to complete a multiplication task.")))))

(define (first-bug-story:snapshot)
  (story-summary-and-goals
   "Learn the story of the First Computer bug -- a literal moth! -- and the common misconceptions about the story. On the way, also learn about Grace Hopper and about the creation of some of the first computers."
   (list "Learn about Grace Hopper, an important historical figure in CS"
         "Connecting with CS history"
         "Not all stories are as true as they seem!"
         "Seeing BUGS in the \"real world\" -- something that even pros deal with")))

(define (first-bug-story:highlights)
  (story-mode "The First Computer Bug: Highlights" 10
              "Plot Points for ad-libbed telling of the First Computer Bug story."
              (story-text
               (steps (list "Introduce " (b "Grace Hopper") ": computer scientist of the 40's, worked on some of the first computers -- Harvard Mark I and II.")
                      (list "Tell the Grace-Hopper-is-the-First-Debugger " (b "myth") ":"
                            (ul (li "Grace Hopper was trying to find the cause of a problem in the Harvard Mark II. She found a moth in the circuits! This is why we call it debugging.")))
                      (list (b "Clarify") " the detais of what really happened:"
                            (ul (li "Grace Hopper wasn't working on the Mark II when this happened (as should would tell everyone!)")
                                (li "The term \"bug\" int this sense had been used in engineering for a long time -- Even Thomas Edison used it!")))
                      (list (b "Important Epilogue") ": This doesn't lessen Grace Hopper's importance! She still:"
                            (ul (li "Wrote some of the first glossaries and computer science texts, popularizing the term \"bug\"")
                                (li "Invented one of the first programming languages: COBOL")
                                (li "Co-create the Mark I and II: paving the way for all computers to come")
                                (li "Believed and taught a similar philosophy that MetaCoders holds: Coding is Language, to be a good at coding (or math, or engineering) you must also be a good communicator")))
                      ))))

(define (first-bug-story:prose)
    (story-mode "The First Computer Bug: Full Text" 10
                "The story of the moth in Mark II"
                @story-text{
                  Grace Hopper was one of the most famous early computer scientists, a pioneer in our field, and undeniably a mathematical and linguistic genius.  Among her many accomplishments, she is often credited for the first case of literal "debugging".  The myth (which isn't true) often gets told as follows:  
                  
                  @i{One day in 1946, Grace Hopper realized that the Harvard Mark II computer (shown in pictures below) was malfunctioning.  After checking the usual sources of errors and finding nothing, she began to open up panels of her giant computer.}

                  @(img style: (properties width: "100%") src: "https://i.imgur.com/rNx6iYA.jpg")

                  @(img style: (properties width: "100%") src: "https://i.imgur.com/vZeE2Kd.jpg")

                  @(img style: (properties width: "100%") src: "https://i.imgur.com/6t9iVGC.jpg")

                  @i{Eventually, she found -- deep in the wires -- a dead moth.  She plucked it out and taped the moth on a log book, writing beneath it: "First actual case of bug being found."  The computer began to work again after that.  Thus, Grace Hopper debugged the first computer.  That log book now resides in the National Museum of American History.}

                  The truth is that Grace Hopper wasn't actually there for that event in 1946, as she readily admitted -- although she had been instrumental in working on that computer.  And it was her team that found the moth.  Also, the term "bug" had been used by Thomas Edison in a similar way long before the Mark II computer was even built.  It was quite common for inventors to remove bugs from electrical hardware.
 
                  Still, it was one of Grace Hopper's favorite stories.  If not for her, we might not otherwise have known about it.  A prolific writer, she wrote some of the earliest texts on computing and some of the earliest glossaries of computing terms (which, of course, included the words "bug" and "debugging" ever since that incident with the moth).  She invented one of the earliest computer languages -- COBOL -- which is still in use today.  "It's much easier for most people to write an English statement than it is to use symbols. So I decided data processors ought to be able to write their programs in English, and the computers would translate them into machine code," she said.  COBOL was the first language designed to allow programmers to write in what felt like English -- thus enabling them to express thoughts as programs that they would not otherwise have been able to express.
                  
                  She was a fierce advocate for the power learning to write well, in all mediums, not just in code and symbols: When she was a college math professor, she would often have her math students write essay.  "[It is] no use trying to learn math unless [you can] communicate it with other people," she would argue.  She applied that same philsophy to her work as a hardware and software engineer.  She was a fantastic engineer with top-notch communication skills -- a crisp and clear writing style that allowed her to not just @i{be} a genuis, but to help others become geniuses.  

                  So, although she didn't physically pull a moth out of the Mark II computer, she did help design the computer that the moth came out of.  During her years of designing computers and programming languages, she reached the rank of Rear Admiral in the Navy.  When she died, she received full military honors.}
                ))

(define (first-bug-story:questions)
  (question-section
   (comprehension-questions
    "Who was Grace Hopper?"
    "Which branch of the military was Grace Hopper in?"
    "What is the name of the computer that the moth was found in?"
    '("Was the moth found before or after World War II?"
      "WWII ended in 1945.  The bug was found in 1946."))
   (creativity-questions
    "Why did Grace Hopper make her math students write essays?"
    "In what way can becoming a better writer make you better at math?"
    "In what way can becoming a better writer make you better at coding?"
    "In what way can becoming better at coding make you better at writing?"
    "In what way can becoming better at coding make you better at math?")))


;==== mars orbiter story

(define (mars-orbiter-bug-story)
  (with-tags (list historical)
    (story-mode "The Mars Orbiter Bug" 10
                "A mission to Mars is several miles (or kilometers) off track -- leading to disaster."
                (story-text (mars-orbiter-bug-story:snapshot)
                            (mars-orbiter-bug-story:tips)
                            (embedded-stories (mars-orbiter-bug-story:highlights)
                                              (mars-orbiter-bug-story:prose))
                            (mars-orbiter-bug-story:questions)
                            ))))

(define (mars-orbiter-bug-story:tips)
  (tips "Don't forget ask questions throughout and at the end! (see suggestions at the end)"))

(define (mars-orbiter-bug-story:snapshot)
  (story-summary-and-goals
   "A true story about a famous bug that caused the loss of a Mars Orbiter -- when some coders wrote the code thinking in Metric kilometers while others were thinking and writing in Imperial miles!"
   (list "Rethinking Bugs practice -- was the bug in the computer? or in the coders?"
         "Learning some cool computer science history"
         "Seeing BUGS in the \"real world\" -- something that even pros deal with")))

(define (mars-orbiter-bug-story:highlights)
  (story-mode "The Mars Orbiter Bug: Highlights" 10
              "Plot Points for ad-libbed telling of the Mars Orbiter Bug story."
              (story-text
               (steps (list "The "(b "Mars Climate Orbiter") " was sent to Mars in 1998.")
                      "The hopes for the mission was to study the atmosphere and climate of Mars and learn more about why the planet, which once was covered in water, became a desert."
                      "After 286 days of space travel, the Orbiter got to Mars!"
                      "But something went wrong -- it entered orbit too close to the atmosphere."
                      "We lost contact and lost the Orbiter -- either to the surface of Mars or the depths of space. We don't know!"
                      "What happened?"
                      "A bug in the code written to control the Orbiter"
                      "The code was written by many people in many places -- some of are used to the Metric system (kilometers, meters, liters, grams....) and others, the Imperial system (miles, inches, pounds...)"
                      "What would happen if I told you to 'go forward 5' and I meant steps, but you thought I meant city blocks?"
                      "That's what happened with the Orbiter!"
                      ))))

(define (mars-orbiter-bug-story:prose)
    (story-mode "The Mars Orbiter Bug: Full Text" 10
                "A mission to Mars is several miles (or kilometers) off track -- leading to disaster."
                @story-text{
 Mars was once covered with water.  Ever since we discovered the evidence of this, the question on everyone's mind has been: Where did Mars' water go?

 In 1998, scientists launched the @b{Mars Climate Orbiter} on an unmanned mission: to study the atmosphere and climate of the red planet. Using this new information, scientists hoped to figure out where the water had gone, and what had turned that red planet from an ocean world into a desert.

                  The Mars Climate Orbiter flew toward Mars for 286 days.  As it approached the planet, the computer began to fire its thrusters to establish an orbit around the planet.  But something went wrong.

                  The Orbiter was too close to the atmosphere!  Its engines began to fail, and communication with that $200 million dollar spaceship was lost.  To this day, we don't know where it is.  It may have been destroyed in the Martian atmosphere, or it may have continued onward, exiting the planet's orbit.  It may be circling the sun to this day -- a tiny scrap of metal compared to the giant planets of the solar system.

                  Although we don't know what happened after contact was lost -- scientists and engineers back on Earth @i{do} know why the ship malfunctioned when it drew near its final destination.

                  The software written to control the ship from Earth was enormous -- many million lines of code.   To get a feel for how big the source code for a space mission can be, here's a picture of a coder named Margaret Hamilton standing next to a printout of code she and her team wrote for a different spaceship:

                  @(img style: (properties width: "100%") src: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Margaret_Hamilton_-_restoration.jpg/340px-Margaret_Hamilton_-_restoration.jpg")

                  As you might expect, any giant piece of text written by human beings is going to have some mistakes in it.  The code that controlled communication with the Mars Climate Orbiter had one nasty bug that doomed its mission -- going entirely unnoticed until it was too late.  

                  The bug was simply this:

                  @i[class: "pl-2"]{@p{One piece of software for controlling the Orbiter was designed to use metric units -- like the ones used everywhere except America.  You know: kilometers, meters, liters, grams, etc.}

                    @p{Another piece of software was designed to use the other kind of units.  You know: miles, inches, pounds, etc.}}

                  So the numbers transmitted by one piece of software to the other were interpreted incorrectly, causing a message to be sent to the Orbiter that (accidentally) told the Orbiter to fly too close to the Martian atmosphere.  An analogy: suppose you told someone to run for 5 -- if they assumed you meant 5 miles they would run much farther than if they assumed you meant 5 kilometers. 

                  Millions of dollars were lost, and a scientific mission doomed.  Most people say it happened because of a software bug.  But at MetaCoders, we know that the stories behind software bugs is more complex.  The bug caused the crash.  But what caused the bug? }))

(define (mars-orbiter-bug-story:questions)
  (question-section
   (comprehension-questions
    "Why was the Orbiter launched?"
    "Did anyone die on the Orbiter?")
   (creativity-questions
    '("What caused the Mars Orbiter bug?  Whose fault is it?"
      "There's no clear answer to this question.  You could say that the programmer who wrote the faulty line caused the bug.  But then, the question is -- why did that programmer think they were supposed to be using non-metric units?  Why didn't the teams who wrote the two pieces of software communicate better about the units they were supposed to use?  Why does our society use two different kinds of units in the first place?  When discussing this it's mainly important to leave students with the understanding that things are more complex than they first thought.")
    "How do you make sure there are no bugs in your code?"
    "How do you think programmers make sure there are no bugs in gigantic, complicated pieces of code?")))

                



