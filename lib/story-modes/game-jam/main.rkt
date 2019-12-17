#lang at-exp racket

(provide intro-jam)

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

(define (intro-jam)
  (with-tags (list meta-classroom)
    (story-mode "Final Jam Rules & Resources" 10
                "Prepare to JAM OUT"
                @story-text{
                  @(tips 
                    "Remember that the purpose of game jam is to get students to engage in a coding activity for a large fraction of the class.  The exact details of the point system and gamification system are largely arbitrary."
                    "Don't get hung up on the details.  Help students focus on the achievement: Writing a large amount of code over a large amount of time, largely without help."
                    "Remember that the 'largely without help' guideline is flexible.  You should take a strong tone in the beginning.  But if students are struggling during the Game Jam, you can (of course) be helpful in giving hints.")
                 
                  When some of you walked in the door on your first day of class, you hadn't done @i{any} coding.  But today, you're going to make an entire game on your own.  Everyone give yourselves a round of applause!                  

                  When some of you walked in the door on your first day of class, you had never @i{read} a line of code.  But because of your hard work and practice, you brain has literally grown since then.

                  When some of you walked in the door on your first day, you had never experienced a flow state while coding.  Today, the main goal is to get into the zone and code for @(coach-fills-in "number of minutes").

                  Your goal is to do as much coding as you can with as little help from me as possible.  Today, I am not a coach.  I'm a judge! 

                  Rule number one as a judge is that I will only give points for @b{running} games.  If your game has bugs in it and won't run, I can't give you @i{any} points.  That means zero!

                  If your game does run, I'm going to score it using the following formula, which I'm going to write on the board so that no one forgets.

                @pre{
                  @code{
                    GAME-SCORE = BONUSES * 5 + (NUMBER-OF-PARENTHESES + NUMBER-OF-KEYWORDS)
                  }
                }

                @(coach-fills-in "Help translate the formula to English if students have not yet learned algebra")

                Now, I'm going to write a program on the board, and we can all score it together. 

                @pre{
                  @code{
                    #lang adventure

                    (adventure-game
                      #:avatar (basic-avatar #:sprite pirate-sprite))
                  }
                }

                @(comprehension-questions
                   '("How many parentheses are in this program?"
                     "Four")
                   '("How many keywords are in this program?"
                     "Two.")
                   '("If there were no bonuses, how many points would this program get?"
                     "0*5 + (4+2) = 6"))

                In a moment I'm going to pass out index cards that I will put stickers on to keep track of your bonuses.

                I'll be giving bonuses for activities that demonstrate excellent coding habits.  For example, if I see people working together effectively as a team -- I might give bonuses for teamwork.  If I see something really cool and crative -- I might give bonuses for that.  If I hear someone exhibiting excellent sportsmanship, I might give bonuses for that.

                If I hear someone complaining or being negative, I might take bonuses away!  

                Lastly, and this is the main rule: You're allowed to code any game you want -- using any tricks you might know.  But I'm going to pass out three hexagonal cards to give you some ideas.  So if you don't know what game to make, you should start with those.

                You're not allowed to flip them and look at the code unless you ask.  That will cost you two dollars.  You're allowed to ask me for help, but that will cost you five dollars. 

                That reminds me: There's one meta-rule that I want you all to remember.  It goes like this: I'm the judge, so I get to change the rules at any time.  If I feel like things are too easy, I'm going to change the rules to increase the challenge.  If I feel like things are too hard, I'm going to change the rules to decrease the challenge.

                After all, you've all been training for this for several weeks now.  

                @(comprehension-questions
                   '("What is the overall goal of any Game Mode?" 
                     "Get into a flow state while coding!")
                   '("What's the main thing that makes Game Jam different from other Game Modes?"
                     "It lasts longer, and we code more!  And it's on the last day of class."))

                })))

