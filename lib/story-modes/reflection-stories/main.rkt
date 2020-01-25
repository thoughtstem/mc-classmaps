#lang at-exp racket

(provide 
 meta-story-one-word
 meta-story-reflect
 meta-story-deep-reflect
 meta-story-next-time
 meta-story-badges
 starting-review
 meta-stories
 all-meta-review-stories ;add stories to this collection (end of file)
 )

(require 
 website/bootstrap
 mc-classmaps/lib/base 
 mc-classmaps/lib/tags
 mc-classmaps/lib/rendering
 website-js/components/accordion-cards)

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

                  @(i @(maybe-add-punct topic))

                  Raise your hand if you have a reflection you want to share...

                  @(tips 
                    "Call on a few students."
                    "Add words of wisdom and encouragement where necessary.")
                })))

(define (meta-story-deep-reflect (topic "what the team did and learned today."))
  (with-tags (list reflection)
    (story-mode "Meta Story: Deep Reflection" 10
                "A deeper dive into the subjects, challenges, and skill-building that happened in today's class."
                @story-text{@(tips "Start with a Think/Pair/Share model before a group conversation to get all students thinking and talking the topic, even if they don't all participate in the big dicussion."
                                   "Ask follow up questions from the students to encourage deeper understanding. Can be as simple as \"Why?\""
                                   "Other great questions: Who also felt that way?  Who also faced that challenge?  Who has advice for that?"
                                   "This is a deep reflection, so feel free to encourage students to raise their hands to respond to each other."
                                   "Moderate to keep the conversation respectful and productive at all times.")
                             @(hr)
                             We have a little extra time today to discuss today's class, specifically:

                             @(i @(maybe-add-punct topic))

                             Before we get started as a big group, I would like you to turn to the person next to you and take turns sharing on this topic. I'll set the timer for 2 minutes for you to do that. Ready, set, go!

                             @(i "Students discuss for 2 minutes before Coach regains focus.")
                             
                             Now, as we dive deeper into our thoughts and experiences, it is important that we respect each other and have a productive conversation by:

                             @(coach-fills-in "any rules or guidelines for the Team (see below).")

                             Who would like to start us off?

                             @(accordion-card #:header "Guideline Suggestions"
                                              "Depending on the age, maturity and size of the Team, you may want to set some guidelines to help promote a positive and productive discussion. Such as:"
                                              (ul (li "Raised hands")
                                                  (li "A \"talking stick\"")
                                                  (li "You must " (i "continue") " the conversation, not just blurt out a random, unrelated thought")
                                                  (li "We can only speak to our own experience, no one else's")))
                })))


(define (meta-story-next-time (thing-to-remember "Today, I'm going to become a better coder"))
  (with-tags (list meta-classroom)
    (story-mode "Meta Story: Next Time..." 3
                "A chance to remind students of something for upcoming classes."
                @story-text{
                  I want you all to close your eyes.  Take a deep breath. 
                  
                  Now, I want you to think about getting out of bed this morning.  Maybe you brushed your teeth, maybe not.  Maybe you had coffee, maybe not.  Maybe you did something special because today is @(coach-fills-in "day of the week").  Or maybe not.

                  Now, I want you to imagine that it's one week from now.  You're getting out of bed.  Maybe you're going to brush your teeth, maybe not.  Maybe you're going to get some coffee, mabye not.  And maybe you're going to do something special because it's @(coach-fills-in "day of the week").

                  Now, I want you to imagine thinking to yourself, "Hey, I have MetaCoders class today."  And I want you to imagine thinking the following:

                  @(i @(maybe-add-punct thing-to-remember))
                })))

(define (meta-story-badges)
  (with-tags (list meta-classroom)
    (story-mode "Meta Story: Badges" 5
                "The Badge Ceremony!"
                @story-text{
                  It's time for the badge ceremony!  When I call your name, I want you to come to the front.  I'm going to ask you how you've grown as a coder or a learner in the last three weeks.  If you can give me an answer, I'll give you this paper badge.  And that means that you'll be getting a real badge in the mail in the future!

                  First up is, @(coach-fills-in "name of badge-earning student from roster")!

                  @(tips
                     "Remind the students who didn't get badges that they'll be getting them soon."
                     "Strive to make the badge ceremony a time to reflect on the personal growth that everyone has experienced.  It's not about the badge; it's about what the badge represents.  Only you -- the coach -- can help nurture this attitude.")
                })))

(define (starting-review (thing-to-review "what we did last time"))
  (with-tags
      (list meta-classroom reflection)
    (story-mode "Review" 5
                "Look back at what we've learned or done in previous classes."
                @story-text{
                            Who can tell me anything they remember about:

                            @(i @(maybe-add-punct thing-to-review))

                            @(tips "Guide the conversation with leading questions as needed."
                                   "Add any follow up points that the students missed after their comments.")})))

(define (meta-stories)
  (list (meta-story-one-word)
        (meta-story-reflect)
        (meta-story-deep-reflect)
        (meta-story-next-time)
        (meta-story-badges)))

;add stories to this collection to be tested and shown on stories page
(define (all-meta-review-stories)
  (flatten (list (meta-stories)
                 (starting-review))))

(module+ test
  (require rackunit)
  
  (all-meta-review-stories))

