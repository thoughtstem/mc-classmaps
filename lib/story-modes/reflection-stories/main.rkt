#lang at-exp racket

(provide 
 meta-story-one-word
 meta-story-reflect
 meta-story-deep-reflect
 meta-story-next-time
 meta-story-badges)

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering)

;======== META STORIES/REFLECTIONS =========

(define (meta-story-one-word)
  (with-tags (list reflection)
    (story-mode "Meta Story: One Word" 5
                "A speedy mini-reflection where each student sums up their experience in one word."
                @story-text{
                  We all did a lot today!  But I want you all to think of just one word that helps sum it all up.  For example, my word is "Proud" (or @(coach-fills-in "any positive word for how you are feeling")).

                  We'll go one at a time.  @(coach-fills-in "name of student"), what's your word?
                })))

(define (meta-story-reflect (topic "what we all did and learned today."))
  (with-tags (list reflection)
    (story-mode "Meta Story: Reflection" 5
                "A chance to practice those metacognition skills."
                @story-text{
                  We're going to reflect for a few minutes on:

                  @(i @topic)

                  Raise your hand if you have a reflection you want to share...

                  @(tips 
                    "Call on a few students."
                    "Add words of wisdom and encouragement where necessary.")
                })))

(define (meta-story-deep-reflect (topic "what the team did and learned today."))
  (with-tags (list reflection)
    (story-mode "Meta Story: Deep Reflection" 10
                "A deeper dive into the subjects, challenges, and skill-building that happened in today's class."
                @story-text{
                  We're going to do a "deep reflection" for a few minutes.  Can anyone tell me what a deep reflection is?

                  @(coach-fills-in "facilitate a discussion about deep discussions")

                  I'll point out that with a deep reflection, it's important to listen to what other people are saying.  If someone raises their hands and says, "I had some trouble getting into a flow state today because of a bug" -- then you have to actually hear and respond to that.  You're not allowed to say something random, like, "I like making video games."  
                  
                  Our reflection topic, which I will write on the board, is:
                   
                  @(i @topic)

                  Who would like to start us off?

                  @(tips 
                    "This is a deep reflection, so feel free to encourage students to raise their hands to respond to each other."
                    "Your goal is to facilitate a productive discussion."
                    "Ask questions like: Who also felt that way?  Who also faced that challenge?  Who has advice for that?")
                  
                })))

;TODO: functionalize this to add what to say about next week?
(define (meta-story-next-time (thing-to-remember "Today, I'm going to become a better coder"))
  (with-tags (list meta-classroom)
    (story-mode "Meta Story: Next Time..." 3
                "A chance to remind students of something for upcoming classes."
                @story-text{
                  I want you all to close your eyes.  Take a deep breath. 
                  
                  Now, I want you to think about getting out of bed this morning.  Maybe you brushed your teeth, maybe not.  Maybe you had coffee, maybe not.  Maybe you did something special because today is @(coach-fills-in "day of the week").  Or maybe not.

                  Now, I want you to imagine that it's one week from now.  You're getting out of bed.  Maybe you're going to brush your teeth, maybe not.  Maybe you're going to get some coffee, mabye not.  And maybe you're going to do something special because it's @(coach-fills-in "day of the week").

                  Now, I want you to imagine thinking to yourself, "Hey, I have MetaCoders class today."  And I want you to imagine thinking the following:

                  @thing-to-remember
                })))

(define (meta-story-badges)
  (with-tags (list meta-classroom)
    (story-mode "Meta Story: Badges" 5
                "Badge ceremony!"
                @story-text{
                  It's time for the badge ceremony!  When I call your name, I want you to come to the front.  I'm going to ask you how you've grown as a coder or a learner in the last three weeks.  If you can give me an answer, I'll give you this paper badge.  And that means that you'll be getting a real badge in the mail in the next few days.

                  First up is, @(coach-fills-in "name of badge-earning student from roster")!

                  @(tips
                     "Remind the students who didn't get badges that they'll be getting them soon."
                     "Strive to make the badge ceremony a time to reflect on the personal growth that everyone has experienced.  It's not about the badge; it's about what the badge represents.  Only you -- the coach -- can help nurture this attitude.")
                })))

