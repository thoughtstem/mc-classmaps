#lang at-exp racket

(provide all-badge-stories ;add stories to this list (defined at end of file) for testing and posting on stories page
         badge-stories
         badge-story
         badge-day-intro)

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

(define (badge-story)
 (with-tags (list meta-classroom badges databases)
    (story-mode "Badge Story" 5
                "Where do MetaCoders badges come from.  There's always more beneath the surface."
                @story-text{
                  When you were born, your name went into a database.  When you first went to kindergarten, your name went into another database.  When you graduated and went to first grade, your information in the database got updated.   

                  Every time you go to the doctor or a dentist, every time you get a grade in class, every time you take a standardized test -- your information gets stored in databases.  Every time you use Instagram or Facebook; and every time you put your name into a web page or app -- your information gets put into databases.

                  And every time you show up for MetaCoders, guess what happens?  We mark in a database that you showed up.  Every time you @i{don't} show up for MetaCoders, guess what happens?  We mark in the database that you @i{didn't} show up.  

                  Somewhere in the world is a computer, and on that computer is a program, and that program has one job -- to watch the MetaCoders database.  Whenever you come to enough classes to earn a badge, that program watching the database says, "Ah, ha! Someone earned a badge."  Then it sends an email to someone whose job is to put the badge you just earned into an envelope and send it to you.   

                  But that @i{only} happens if your information in the database says, "This person is allowed to get badges."  And that's something that only happens if your parents go online and say, "I agree that my child is allowed to get badges."   

                  The code for the program looks like this:

                  @pre{
                    @code{
                      #lang badge-watcher

                      (for-every-meta-coders-student
                        (if (and 
                              (student-earned-a-badge?)
                              (parent-allowed-student-to-get-badge?))
                          (send-earned-badge)
                          (do-not-send-earned-badge)))
                    }
                  }

                  I'm going to be giving you a paper version of a badge today.  If you want the official badge, you'll need to make sure that your parents are okay with you getting one.  There's a website on the paper about how to do that.

                  @(question-section
                    (comprehension-questions
                       "What is a database?"
                       "How do you make sure that you receive badges in the mail?") 

                    (creativity-questions
                       "How many databases in the world do you think your information is in?"
                       "Why must your parents agree before you are allowed to get badges in the mail?"))

                })))

(define (badge-stories)
  (list
    (badge-story)

    (comparison-story 
      (ancient-badge) 
      (purple-heart-badge) 
      (meta-coders-badge)) 

    (ancient-badge)
    (purple-heart-badge)
    (meta-coders-badge)))

(define (comparison-story . stories)
  (with-tags (list meta-classroom badges multi)
    (story-mode "Three Badge Stories" 5
                "A discussion of badges and how they mean more than they seem to mean."
                (apply comparison-text stories))))

(define (comparison-text . stories)
  @story-text{
    Read and discuss one or more of the following stories.  Each is quite different, but the theme of badges ties them together.  The purpose is to get students to meditate on the meaning and significance of badges and symbols -- not just the thrill of getting awarded one.

    @(embedded-stories stories)

    @(hr)
    @(h5 "Discussion Questions")

    @(question-section
       (comprehension-questions
         "What are the names of the characters in each story we just read?"
         "What are the different forms of badges given in each story?")
       (creativity-questions
         "Which badge was the most meaningful and why?" 
         "What makes a badge more than what it appears to be?" 
         "What have you learned in the last three weeks that your next MetaCoders badge can be a symbol of?" ))
  })





(define (ancient-badge)
  (with-tags (list badges)
    (story-mode "Ancient Badges" 1
                "A badge two thousand years ago.  A chance to meditate on how symbols tell stories."
                @story-text{
                  Iki awakens in early morning -- not to the sound of the wind in the leaves of his hut, but from the pounding of his own excited heartbeat.  Today is no ordinary day.  

                  He creeps out of bed, careful not to wake his mother or father, careful not to wake his baby brother, who sleeps in a cradle of leaves and branches near his parents' bed of straw. 

                  Outside, he walks barefoot to the edge of his small tribe's collection of huts.  He walks all the way to the old tree at the edge of the forest.  
                  
                  There are days that he wakes up hungry.  But not today.  There are days when he wakes up at sunrise.  But not today. 
 
                  There, in the moonlight, he inspects his right arm -- skin still smooth, for now.  But today, his great grandmother will take a bone from the animal he hunted yesterday -- the one his mother had cleaned and cooked for them to eat last night.  Today, she will sharpen that bone against a rock, in front of everyone in the tribe.
                  
                   His grandmother is the oldest and wisest member of the tribe.  Her arms and face are covered with both hundreds of wrinkles and hundreds of marks -- some made by her own great grandmother, long ago returned to the earth.  Today, when the sun rises, she will use the bone to cut into Iki's skin to create a scar -- to mark his first successful hunt.  It will look just like the mark his father has on @i{his} right arm.

                  It will not be a large scar, for it will not be a large bone, for it was not a large animal that he killed.  He cannot yet throw a large spear, like his father.  But yesterday, he proved that he can throw a rock and help bring home food for his family.  Because of yesterday, today is no ordinary day.  
                  
                  Today is a day he and his tribe will never forget.  Today is the day his tribe will mark his body for the first time.  One day, when his baby brother is older, he will point to the mark on his arm and tell the story of how he threw that rock, and he will tell the story of how his great grandmother bestowed his first mark upon him.  


                  @(question-section
                    (comprehension-questions
                       "Why is Iki getting a mark today?"
                       "Why is Iki excited about it?"
                       "Is it going to hurt?  Why?"
                       "Why does the oldest member of the tribe have the most marks?") 

                    (creativity-questions
                       "How old is Iki?"
                       "What kind of animal did Iki kill?"
                       "Why does Iki sometimes wake up hungry?"
                       "What else do people in Iki's tribe get marks for?"))
                  })))

(define (purple-heart-badge)
  (with-tags (list badges)
    (story-mode "Purple Hearts" 1
                "A badge in the attic.  A chance to meditate on a badge that symbolizes a major sacrifice."
                @story-text{
                  Today is an ordinary Friday night for Megan: she's bored.  Her math homework was easy, as usual.  The babysitter is there, watching something boring on television, as usual.  

                  Megan isn't allowed to text on her phone -- because of that prank she played on the babysitter last week.  So she's bored, as usual.

                  "I'm going to do homework in my room," says Megan, getting up from the couch.

                  The babysitter eyes her suspiciously.  "Are you going to climb out your window again?" 

                  "No," says Megan.  

                  "Are you going to play some other kind of prank?"
                  
                  "No!  Look, my fingers aren't even crossed."  She shows her hands, innocently, while crossing her toes inside her shoes.

                  When Megan goes upstairs, she tiptoes down the hall past her room and pulls the cord that opens the door to the attic.  The rickety wooden stairs creak as she quietly climbs into the dark and dusty room, lit by a single lightbulb.  
   
                  Her plan is to find some of her dad's old art supplies -- maybe some red paint to make some fake blood.  Megan's friends call her a prank-a-holic.  But when she begins rummaging through an old box she's never opened before, she find a smaller box labeled "Grandpa" in her father's handwriting. 

                  Inside, she finds an old photograph of a young man.  He looks younger than her parents -- about as old as the babysitter's college boyfriend.  He is wearing a military uniform.  Also in the box is the uniform itself, having been folded neatly for what appeared to be decades.  And beneath the uniform is a Purple Heart -- one of those medals American soldiers get if they are wounded in battle.  

                  Megan brushes the dust off of a spot on the floor and lays all three items out in front of her.  At first she considers putting on the uniform and taking a silly selfie -- which would be a cool Instagram post.  Then, she remembers she doesn't have her phone anymore.  Plus, the uniform is way too big for her.

                  There's an antique mirror in the attic that once belonged to her great aunt.  She places the Purple Heart on her chest and looks at herself.  She compares herself to the man in the photo.  But then she notices that although the man is wearing a uniform in the photo, he is @i{not} wearing the Purple Heart.  It occurs to Megan that her dad has never really talked about his grandparents before.  She remembers her friend telling her that Purple Hearts are given for one of two reasons: to a soldier after being wounded; or to the family after a soldier dies.  

                  She doesn't know which it is, but all of a sudden, she doesn't feel like playing a prank this week.   She packs everything back into the box except the Purple Heart.  She goes to her room, opens her math textbook, and does the extra problems at the end of the chapter.  The teacher gives out badges every Monday for students who do the extra problems.  She places the Purple Heart on her desk, in the spot here she usually keeps her phone.

                  @(question-section
                    (comprehension-questions
                      "What does a Purple Heart look like?" 
                      "Why is the spot where she usually keeps her phone empty?" 
                      "What adjectives describe Megan's personality?" 
                      "What relationship does the person in the photo have to Megan?" )

                    (creativity-questions
                      "What prank did Megan play last week?" 
                      "Why did Megan's great-grandfather get a Purple Heart?" 
                      "Why does seeing a Purple Heart inspire Megan to do homework instead of pranking the babysitter?"))

                  }))) 

(define (meta-coders-badge)
  (with-tags (list badges)
    (story-mode "Coding Badges" 1
                "A badge at MetaCoders.  A chance to meditate on how even a MetaCoders badge can mean more than it means."
                @story-text{

                  Anya wakes up with a gasp, realizing that today is no ordinary day.  She runs down the stairs, through the kitchen, where her mother is just beginning to make coffee.  She grabs her MetaCoders hoodie on the way out and runs across the driveway to the mailbox.  She yanks the mailbox door open.

                  Empty.

                  She runs back inside, where her mother is now sitting at the table with the newspaper.  "Mom!" she says.  "Where's the mail?"

                  "Are you feeling okay?" her mother asks.  "You never check the mail.  And the mailman doesn't come in the middle of the night anyway."

                  Anya slumps into a chair.  "I was hoping he made an exception," she says.

                  "He's the mailman," says her mother.  "Not Santa Claus."

                  Anya points to an empty spot on her MetaCoders hoodie.  "It's my eleventh badge," she says.  "I'm supposed to get it in the mail today." 

                  Her mom eyes her over the newspaper.  "Eleven?  Not bad.  What's so special about eleven?"  

                  Anya rolls her eyes.  "You wouldn't understand."

                  @(hr)

                  All day at school, Anya could hardly sit still.  Her last class of the day was history class -- usually her favorite.  But today, she could barely pay attention while Mr. Landry was telling a story about how ancient tribes used tattoos to mark people's accomplishments on their bodies.  

                  When the bell rang, she tried to bolt.  But Mr. Landry called her back.  "Anya," he said, "where were you today.  Your brain was somewhere else."

                  Anya showed him the ten badges she had already sewn onto her MetaCoders hoodie.  "The eleventh one goes right here," she says, pointing to the empty spot.   

                  "What's so special about eleven?" he asks.  

                  "You wouldn't understand," she says.

                  @(hr)

                  The school bus drops her off a few houses away from hers.  She runs all the way home, backpack bouncing.  She can see the mailbox in the distance.  

                  As she runs, she crosses her fingers.  She is panting by the time she wrenches the mailbox door open for the second time that day.   

                  To her relief: There it is.  The envelope from MetaCoders.  Squeezing it, she can feel the outlines of the hexagonal badge.

                  Inside, no one is home yet -- which is for the best.  They wouldn't understand.   She tears the envelope open, finding the badge, and placing it delicately on the kitchen table.  Then she snaps a picture of it with her phone.  

                  On the refrigerator is a photo of her older brother -- wearing his MetaCoders junior coach hoodie.  That was before he went off to college.  Anya takes the photo down and puts it next to her eleventh badge.  Then she takes a second picture -- of the badge @i{and} the photograph.  She messages it to him and holds her breath.

                  Ever since going off to college, he has only called her once -- on the day of her birthday.  According to mom, "he has a girlfriend now" -- which is code for "we'll never hear from him again".  
                  
                  But then her phone starts to ring -- a silly ringtone of him singing the @i{Star Wars} theme song.  When she picks up, he says, "Eleven badges?"  

                  "Yep," she says.

                  Neither one of them says anything for a moment.  But she knows that he understands.

                  "I'm proud of you," he says.  

                  Anya counts the badges in his photograph -- something she's done hundreds of times.  There are only ten.   And he's majoring in computer science in college.  

                  "You were always the smart one," he says.

                  He had joined MetaCoders when he was a junior in high school, becoming an assistant coach and getting ten badges before he graduated and went off to college.  

                  "Are you still there?" he says.

                  "Mom says we'll never hear from you again," she says.

                  "Classes are crazy," he says.  "I have to code an entire game for my final project.  But hey -- maybe I could send you the game when I'm done.  I'll leave some comments in the code for you."

                  "That would be cool," she says, glad that he can't see her eyes getting wet.  "It would also be cool if you called more.  It's not like I expect you to talk to your little sister every day.  But it would be nice if it wasn't like you just fell off the earth."

                  "I'll tell you what," he says.  "Tell me the date you're getting your twelth badge.  I'll put it on my calendar right now.  Three weeks from now, right?"

                  "Promise?" she says.

                  "Yeah," he says.  "Pinky swear."

                  @(question-section
                     (comprehension-questions
                       "Why is the eleventh badge significant?"
                       "Do Anya and her brother get along?")
                     (creativity-questions
                       "What will Anya major in in college?"
                       "Is Anya's brother getting good grades in college?"
                       "Will Anya get better grades in college than her brother is getting now?"))

                  })))

(define (badge-day-intro)
  (with-tags
      (list badges meta-classroom)
    (story-mode "Badges Today!" 5
                "A reminder about badges, and what they mean, for days when some students will earn a badge."
                (story-text (badge-day-intro:tips)
                            (badge-day-intro:snapshot)
                            (embedded-stories (badge-day-intro:highlights)
                                              (badge-day-intro:prose))
                            (badge-day-intro:questions)))))

(define (badge-day-intro:tips)
  (tips "Make this exciting! It's your job, as Coach, to make it clear what these Badges mean and give them a high level of importance. Do this by creating a ritual, being consistant with the meaning of the Badges (learning!), and keeping the value of the Badges (only given when earned)."
        "If you have an alternative Badge Ceremony, be sure to describe that ritual instead!"))

(define (badge-day-intro:snapshot)
  (summary-and-goals
   "Review information about and importance of badges in prep for awarding them at the end of class."
   (list "Students know what a badge is and why they are getting one"
         "Students when they get badges/badge certificates")))


(define (badge-day-intro:highlights )
  (story-mode "Badges Today: Story at a Glance" 5
              "Plot Points for ad-libbed telling of the Badges story."
              (story-text (steps "At the end of class today, some of you will have earned a Badge!"
                                 "We earn Badges as we learn and become better coders and better learners."
                                 (list "Everytime you are here, you are learning. We track your " (b "attendance") " and award Badges according to that.")
                                 (list "But it's not just about showing up, it's about " (b "learning") ".")
                                 (list "So, as a part of the Badge Ceremony, each of you must " ( b "tell us X thing(s) you have learned") " since your last Badge/the start of class that have made you a better coder and learner.")
                                 (list "Start thinking now, " (i "[fill in names of Badge-Earning students]") "!") 
                                 (list "At the " (b "end of class" ) " we will have our Ceremony for the following students...")
                                 "The first badge you earn, you will receive a badge certificate and the badge itself!"
                                 "For the 2nd and 3rd badges, you will receive a badge certificate, and will get the badge in the mail at then end of class."
                                 (list "Students that have not earned this Badge yet -- you will be getting your next Badge " (b (i "[fill in number of attendances remain for said students]") "."))))))

(define (badge-day-intro:prose )
  (story-mode "Badges Today: Full Text" 5
              "A simple introduction to badges"
              @story-text{ At the end of class today, we will be having our @b{Badge Ceremony} where some of you will be earning your Badges! We talked briefly about Badges at the start of this session, does anyone remember anything about Badges?

 @b{@i{Coach clarifies/fills in any of the information below that students do not mention:}}

 The Badges are symbols of our knowledge and growth: both as coders and as learners! We earn Badges as we build skills and fluencies. Now, it's hard for me to go inside your brain and measure all the new growth and neural connections that happen as we learn. So, we track how many classes you attend and award you Badges when you reach the classes Badge Goals!

 During the Badge Ceremony, I will ask each of the Badge-Earners to tell us @(coach-fills-in "chosen number, between 1 and # of class attendances") things you have learned since @i{the beginning of this session/your last badge} because this isn't just about showing up, right? This is about what you have learned that has made you a better coder and a better learner.

 So start thinking of those things now! Especially the students earning their badge today: @(coach-fills-in "names of badge-earners")

 You will recieve a Badge Certificate to show everyone that you have earned this badge. You will get (or already have gotten) the @b{first badge} with your first certificate. All other badges you earn this session will @b{come in the mail, after the last class}!

 Those of you who haven't earned this badge yet, don't worry! You will soon. @(coach-fills-in "number of attendances remaining for students yet to earn this badge")

 }))


(define (badge-day-intro:questions)
  (question-section
   (comprehension-questions
    '("How do you get the Badge as well as the Badge Certificate?"
      "Get parent's help to follow instructions on the Badge Certificate.")
    '("What do you need to do in the Badge Ceremony before you earn your Badge Certificate?"
      "Tell us X things you have learned that make you a better coder and/or learner.")
    '("How are these badges different than, say, a 1st place trophy? Or a runnersup ribbon?"
      "You aren't competing against anyone but yourself to earn them. There is not a limit on how many of you can earn them."))
   (creativity-questions
    "Where else do you earn badges/awards like badges for what you have achieved?"
    "Who has earned a Badge in a class with us before?"
    "What can you do with these Badges?"
    )))


;add stories to this list to be tested and added to stories page
(define (all-badge-stories)
  (flatten (list (badge-stories)
                 (badge-day-intro))))

(module+ test
  (require rackunit)

  (all-badge-stories))



