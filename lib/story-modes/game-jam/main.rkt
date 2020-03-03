#lang at-exp racket

(provide intro-jam)

(require 
  website/bootstrap
  mc-classmaps/lib/base 
  mc-classmaps/lib/tags
  mc-classmaps/lib/rendering)

(module+ test
  (require rackunit)
  (intro-jam))

(define (intro-jam)
  (with-tags (list meta-classroom jam)
    (story-mode "Final Jam Rules & Resources" 10
                "Prepare to JAM OUT!"
                (story-text (intro-jam:snapshot)
                            (embedded-stories (intro-jam:highlights)
                                              (intro-jam:prose))
                            (intro-jam:questions)
                            (intro-jam:tips)
                            ))))

(define (intro-jam:tips)
  (tips
   (list "Remember the goals of a Jam:"
         (ol (li "This class is " (b "exciting") " and " (b "different") " than other classes.")
             (li "Students " (b "write code."))
             (li "Students feel " (b "accomplished") " and " (b "proud") "of what they did and have learned!")))
   "Adjust rules, supports, and scoring as needed to achieve the goals above."
   (list "Additional resources may include:"
         (ul (li "An Asset Library -- a list of availble sprites/assets on a computer or written elsewhere")
                 ( li "A Definitions Library -- a list of available functions/definitions on a computer or written elsewhere")
                 (li "A Code Guide -- an outline of common code structure, such as definitions. Shown to all on projector or available for checking in")))
   "Don't get hung up on the details.  Help students focus on the achievement: Writing a large amount of code over a large amount of time, largely without help."))

(define (intro-jam:snapshot)
  (summary-and-goals
   "Review how it works, inspire confidence, and pump up students for the Final Jam!"
   (list "Get students excited, make the day special!"
         "Prep as needed -- pair up, create team names, hand out bonus point cards..."
         "Briefly explain scoring"
         "Clarify: Coach is now a judge!"
         "Review class rules and Code of Awesomeness as needed"
         "Give advice: start small and test often!")))

(define (intro-jam:highlights)
  (story-mode "Final Jam Rules & Resources: Highlights" 10
              "A quick reminder of plot points."
              (story-text (ol (li "Pair up -- either assigned partners, random, or pick-your own")
                              (li "Review good pair programming practices")
                              (li "Coach is now " (b "the judge"))
                              (li "Games must RUN!")
                              (li "Scored at end by:"
                                  (ul (li "K-2nd: total number of code cards completed.")
                                      (li "3rd and up: number of parens, keywords, and bonus point awarded by Judge throughout Jam.")))
                              (li "3rd+: You get 3 code cards for inspiration, but only the specification/english side up!")
                              (li "Resources for help:"
                                  (ul (li (b "Flip a code card") ": pay 2 dollars of MetaMoney to see the implementation/code of a card")
                                      (li (b "Get Coach help") ": pay 5 dollars of MetaMoney to get Coach help with a bug.")
                                      (li "Add others here")))
                              (li "Meta-rule: Judge can change the rules at any time! (ex. price of resources)")
                              (li "Excited! Can do it! Let's go!")))))

(define (intro-jam:questions)
  (comprehension-questions
   '("What is the overall goal of any Game Mode?" 
     "Get into a flow state while coding!")
   '("What's the main thing that makes Final Jam different from other Game Modes?"
     "It lasts longer, and we code more!  And it's on the last day of class.")
   '("When can you flip a code card?"
     "When you ask and pay 2 dollars.")
   '("What other resource is available to you? For how much?"
     "Ask Coach/Judge for help. Costs 5 dollars.")
   '("What's the meta-rule?"
     "Coach/Judge can change rules at any time.")))

(define (intro-jam:prose)
  (story-mode "Final Jam Rules & Resources: Full Text for 3rd+" 10
              "Prepare to JAM OUT"
              @story-text{
 When some of you walked in the door on your first day of class, you hadn't done @i{any} coding.  But today, you're going to make an entire game on your own.  Everyone give yourselves a round of applause!                  

 When some of you walked in the door on your first day of class, you had never @i{read} a line of code.  But because of your hard work and practice, you brain has literally grown since then.

 When some of you walked in the door on your first day, you had never experienced a flow state while coding.  Today, the main goal is to get into the zone and code for @(coach-fills-in "number of minutes").

 We are going to be @b{pair programming} today, so let's take a moment to figure out our partners.

 @(coach-fills-in "partnering process: assigned, random or pick-your-own.")

 @(coach-asks "How do we code well with a partner?" #:example-answers (list "Change who's typing every 2 minutes when the timer buzzes" "Be supportive" "Pay attention, even when not typing" "Compromise"))
 Your goal is to do as much coding as you can with as little help from me as possible.  Today, I am not a coach.  I'm a judge! 

 Rule number one as a judge is that I will only give points for @b{running} games.  If your game has bugs in it and won't run, I can't give you @i{any} points.  That means zero!

 If your game does run, you will receive a score based on the number of parentheses and keywords in your running game. I will show you the exact formula later, but keep that in mind as you code.

 You will also get bonus points! In a moment I'm going to pass out index cards where you will write your team name and where I will put stickers whenever you earn bonus points.
 
 I'll be giving bonuses for activities that demonstrate excellent coding habits.  For example, if I see people working together effectively as a team -- I might give bonuses for teamwork.  If I see something really cool and creative -- I might give bonuses for that.  If I hear someone exhibiting excellent sportsmanship, I might give bonuses for that.

 If I hear someone complaining or being negative, I might take bonuses away!  

 Lastly, and this is the main rule: You're allowed to code any game you want -- using any tricks you might know.  But I'm going to pass out three code cards to give you some ideas.  So if you don't know what game to make, you should start with those.

 @b{You're not allowed to flip them and look at the code} unless you ask.  That will cost you two dollars of your MetaMoney.  You're allowed to ask me for help, but that will cost you five dollars.
 @(coach-fills-in "additional resources and prices")

 That reminds me: There's one meta-rule that I want you all to remember.  It goes like this: I'm the judge, so I get to change the rules at any time.  I'll put up the prices of these two resources where you can see them, but at any time I may make them cost more, or less -- I am the judge and I get to decide! I may even add new ones, or take some away!

 I am so exited to see what you all create. You have learned so much during this class and I know you can all do this!!}))
