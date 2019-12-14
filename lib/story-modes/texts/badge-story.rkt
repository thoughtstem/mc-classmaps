#lang at-exp racket

(provide story)

(require 
 website/bootstrap
 website-js/components/accordion-cards
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

(define (story)
  (with-tags (list meta-classroom badges)
    (story-mode "Badge Story" 5
                "The importance of badges and what they mean, in prep for awarding the first badge(s)!"
                (main-text))))



(define (story-a)
  (with-tags (list badges)
    (story-mode "Ancient Badges" 1
                "A badge two thousand years ago."
                @story-text{
                  Iki awakens in early morning -- not to the sound of the wind in the leaves of his hut, but from the pounding of his own excited heartbeat.  Today is no ordinary day.  

                  He creeps out of bed, careful not to wake his mother or father, careful not to wake his baby brother, who sleeps in a cradle of leaves and branches near his parents' bed of straw. 

                  Outside, he walks barefoot to the edge of his small tribe's collection of huts.  He walks all the way to the old tree at the edge of the forest.  
                  
                  There are days that he wakes up hungry.  But not today.  There are days when he wakes up at sunrise.  But not today. 
 
                  There, in the moonlight, he inspects his right arm -- skin still smooth, for now.  But today, his great grandmother will take a bone from the animal he hunted yesterday -- the one his mother had cleaned and cooked for them to eat last night.  Today, she will sharpen that bone against a rock, in front of everyone in the tribe.
                  
                   His grandmother is the oldest and wisest member of the tribe.  Her arms and face are covered with both hundreds of wrinkles and hundreds of marks -- some made by her own great grandmother, long ago returned to the earth.  Today, when the sun rises, she will use the bone to cut into Iki's skin to create a scar -- to mark his first successful hunt.  It will look just like the mark his father has on @i{his} right arm.

                  It will not be a large scar, for it will not be a large bone, for it was not a large animal that he killed.  He cannot yet throw a large spear, like his father.  But yesterday, he proved that he can throw a rock and help bring home food for his family.  Because of yesterday, today is no ordinary day.  
                  
                  Today is a day he and his tribe will never forget.  Today is the day his tribe will mark his body for the first time.  One day, when his baby brother is older, he will point to the mark on his arm and tell the story of how he threw that rock, and he will tell the story of how his great grandmother bestowed his first mark upon him.  


                  @(accordion-cards
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

(define (story-b)
  (with-tags (list badges)
    (story-mode "Purple Hearts" 1
                "A badge in the attic."
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

                  @(accordion-cards
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

(define (story-c)
  (with-tags (list badges)
    (story-mode "Coding Badges" 1
                "A badge at MetaCoders"
                @story-text{

                  Anya wakes up with a gasp, realizing that today is no ordinary day.  She runs down the stairs, through the kitchen, where her mother is just beginning to make coffee.  She grabs her MetaCoders hoodie on the way out and runs across the driveway to the mailbox.  She yanks the mailbox door open.

                  Empty.

                  She runs back inside, where her mother is now sitting at the table with the newspaper.  "Mom!" she says.  "Where's the mail?"

                  "Are you feeling okay?" her mother asks.  "You never check the mail.  And the mailman doesn't come in the middle of the night anyway."

                  Anya slumps into a chair.  "I was hoping he made an exception," she says.

                  "He's the mailman," says her mother.  "Not Santa Claus."

                  Anya points to an empty spot on her MetaCoders hoodie.  "It's my tenth badge," she says.  "I'm supposed to get it in the mail today." 

                  Her mom looks at her over the newspaper.  "Ten badges?  Not bad."  

                  @(hr)

                  All day at school, Anya could hardly sit still.  In history class, she learned about how ancient tribes used to use marks [which made her think of badges... (too on the nose??)]

                  @(accordion-cards
                     (comprehension-questions)
                     (creativity-questions))

                  }))) 

(define (story-accordion-card story)
   (accordion-card #:header (list (story-icon) " " (story-mode-name story))
      (story-mode-data story)))

(define (main-text)
  @story-text{
    Read and discuss one or more of the following stories.  Each is quite different, but the theme of badges ties them together.  The purpose is to get students to meditate on the meaning and significance of badges and symbols -- not just the thrill of getting awarded one.

    @(accordion-cards
       (story-accordion-card (story-a))
       (story-accordion-card (story-b))
       (story-accordion-card (story-c)))

    @(hr)
    @(h5 "Discussion Questions")

    @(accordion-cards
       (comprehension-questions
         "What are the names of the characters in each story we just read?"
         "What are the different forms of badges given in each story?")
       (creativity-questions
         "Which badge was the most meaningful and why?" 
         "What makes a badge more than what it appears to be?" ))
  })




