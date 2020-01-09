#lang at-exp racket

(provide transitions-tab-pane
         game-to-story
         story-to-game)

(require website/bootstrap
         mc-classmaps/lib)

(define (into-icon)
  (i class: "fas fa-sign-in-alt"))

(define (outof-icon)
  (i class: "fas fa-sign-out-alt"))

(define (transitions-tab-pane (pane tab-pane))
 (pane id: "transitions" class: "p-3" 
  (h3 "Transitions")
  (p "Because there are only two acceptable classroom modalities, there are four primary kinds of transitions coaches must be fluent in.  In addition, there are transistions into and out of class. All of these transitions are simplified into three or fewer steps to enable you to start using them with high mastery in your first class.  Check them out in the tabs below.")

  @hr
  
  (h5 "A Note on Attention Getters: ")
  (p "Having the student's attention is required in order to transisition effectively.  Conveniently, most "(b "Class Launch Maps") " include the " @b{Code of Awesomeness Mottos} " Game Mode, where the class generates their very own call and response -- a perfect attention getter! Use these often.")
  (p "The attention getter rule of thumb is: If it works, it's fine.  If you " (link-to "https://www.google.com/search?q=attention%20getters" "google for attention getters") ", you'll find hundreds.  Most of them are based on the highly effective call/response model. Find your favorite or build a repertoire of dozens.  That's up to you.")
  @p{Here's a video with several:}
  @html/inline{
 <iframe width="560" height="315" src="https://www.youtube.com/embed/78eiLtQjmss" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 
}

  @hr

  (tabify
   @active-tab-nav-link[href: "#s-g"]{@(story-icon) Story to @(game-icon) Game }
   @tab-nav-link[href: "#g-s"]{@(game-icon) Game to @(story-icon) Story}
   @tab-nav-link[href: "#g-g"]{@(game-icon) Game to @(game-icon) Game}
   @tab-nav-link[href: "#s-s"]{@(story-icon) Story to @(story-icon) Story}
   @tab-nav-link[href: "#into"]{@(into-icon) Into Class}
   @tab-nav-link[href: "#outof"]{@(outof-icon) Out Of Class}

   (active-tab-pane id: "s-g" 
     (container class: "p-3"
      (story-to-game)))
   (tab-pane id: "g-s" 
    (container class: "p-3"
     (game-to-story)))
   (tab-pane id: "g-g" 
    (container class: "p-3"
     (game-to-game)))
   (tab-pane id: "s-s" 
    (container class: "p-3"
     (story-to-story)))
   (tab-pane id: "into" 
    (container class: "p-3"
     (into-class)))
   (tab-pane id: "outof" 
    (container class: "p-3"
     (outof-class))))))


(define (story-to-game)
  (list 
    @h3{@(story-icon) Story Mode to @(game-icon) Game Mode} 
    @p{Transitioning from Story Mode to Game Mode involves:
      @ul{
        @li{Ending the current story.}
        @li{Explaining the upcoming game.}
        @li{Raising the energy level.}
        @li{Preparing students for flow state.}
      }
    }

    @p{@b{Do you need an attention getter?}  No. You should be in Story Mode already, meaning that the class's attention is focused on you or people you designate.  You only need an attention getter if you aren't really in @(story-icon) Story Mode -- i.e. if the class's focused attention has begun to fray.}

    @p{@b{What are the ABCs of a @(story-icon) Story Mode to @(game-icon) Game Mode transition?}
       @ul{
         @li{@b{(A)nnounce} that you are about to transition to a @(game-icon) Game Mode.  But tell the class to wait until you say "Start".} 
         @li{@p{@b{(B)uild tension}.  Recommendations for this step can be found in the various @(game-icon) Game Modes on this site, but the general idea is:
              @ul{
                @li{Give the instructions you want students to perform @i{after} you say "Start".}
                @li{Tell them what the challenge will be.  If there is a time limit, tell them now.  This gives them time to rally cognitive resources for the challenge ahead.}  
                @li{Explain the cognitive benefit of the Game Mode.  Tell them why you are asking them to do it.}}}}
         @li{@b{(C)hange the space and (C)ontinue}. Alter the room in a visually distinguishable way -- turn the lights on, have students open their computers, etc.  Say "Start".}
       } 
    }

  ))


(define (game-to-story)
  (list 
    @h3{@(game-icon) Game Mode to @(story-icon) Story Mode} 
    @p{Transitioning from Game Mode to Story Mode involves:
      @ul{
        @li{Ending the current game.}
        @li{Handling byproducts of interrupted flow state.}
        @li{Lowering the energy level.}
        @li{Preparing students for narrative transportation.}
      }
    }

    @p{@b{Do you need an attention getter?}  Almost always.  In @(game-icon) Game Mode, the class's attention should be focused on their task at hand.  Ideally, they will be in a state of flow, fully absorbed.  The only time you @i{won't} need an attention getter is if you weren't really in a @(game-icon) Game Mode -- i.e. if the task was too hard or too easy to induce a flow state -- and students are already looking at you, waiting for you to do something.}

    @p{@b{What are the ABCs of a @(game-icon) Game Mode to @(story-icon) Story Mode transition?}
       @ul{
         @li{@b{(C)all attention and (C)hange the space}. Use your attention getter and immediately make a visually distinguishable change in the classroom -- i.e. turn off the lights, have students move to a new place and circle up, have students shut their computers.}
         @li{@p{@b{(B)ring down the energy}.  In a well-run Game Mode, heart rates and excitement should be high.  So you'll need to help students calm down. 
              @ul{
                @li{Lead a breathing or stretching exercise.}
                @li{Ask a student to tell you a positive story about their experience in the previous Game Mode.}
                @li{Tell the students they did well in the previous Game Mode.  Remind them of the cognitive benefits of that Game Mode.  This helps them become more focused on their own long-term growth and less focused on their performace (good or bad) in the specific Game Mode that just ended.}
                }}}
         @li{@b{(A)dvance into the story}.  Begin with any necessary meta-data about the story (Why you are telling it? Why do you think it is valuable?).  Tell the story.}
       } 
    }

  ))

(define (game-to-game)
  (list 
    @h3{@(game-icon) Game Mode to @(game-icon) Game Mode} 

    @p{@b{Do you need an attention getter?}  Almost always.  In @(game-icon) Game Mode, the class's attention should be focused on their task at hand.  Ideally, they will be in a state of flow, fully absorbed.  The only time you @i{won't} need an attention getter is if you weren't really in a @(game-icon) Game Mode -- i.e. if the task was too hard or too easy to induce a flow state.}

    @p{These transitions should be quick and efficient.  You don't need to have students change space.  And you aren't interrupting their flow state for very long.  Usually, @(game-icon) Game Mode to @(story-icon) Game Mode transitions are used to "patch" the current Game Mode -- i.e. to add a new rule, to raise the challenge, to introduce a new round.} 
    
    @p{If done correctly, students should not feel that the @(game-icon) Game Mode ever ended -- just that it was briefly interrupted and subtley changed from that point forward.}
    ))

(define (story-to-story)
  (list 
    @h3{@(story-icon) Story Mode to @(story-icon) Story Mode} 

    @p{@b{Do you need an attention getter?} No.  You should already have their attention.  It's Story Mode.}

    @p{These transitions should be barely noticeable.  You should end one story and begin another, without loss of momentum.} 
    
    @p{If done correctly, students should not feel that the @(story-icon) Story Mode ever ended -- just that it happened to contain more than one story.}
    ))



(define (into-class)
  (list 
   @h3{@(into-icon) Transitioning Into Class}

   @p{Create a starting-class @b{routine} for yourself and your students. Whether you arrive to a room where all students are waiting for you, or students join you one by one, create a routine on the very first class and stick with it.}

   @p{This routine will help students "get into the right headspace" for class and sustain a sense cohesion through a class where you may be doing wildly different things day-to-day. Students will also become more independant as they grow accustomed the the routine, giving you time to finish setting up, take attendance, check in with HQ or deal with anything else that arises.}

   @p{A recommended Start-Class routine to begin with is:}
   @ul{
      @li{Have a specific location for students to go and @b{sit}.}
      @li{Talk to them about their day (@b{Story Mode!})}
      @li{Take @b{attendance} as each student arrives.  Submit attendance and start with classmap when ready.}}

   @p{As you develop your own favorite routines, keep in mind:}
   
   @p{Start-Class routines @b{must} include:}
   @ul{
      @li{Taking of attendance (and reporting as needed).}}

   @p{Start-Class routines @i{can} include:}
   @ul{
      @li{Staggered, independant tasks like having a snack or putting your lunch bag by the door}
      @li{Coding warmups}
      @li{Group check-ins ("How was everyone's day?" "Anyone do anything cool over the last week?")}
      @li{Attention Getters}
      }


    ))


(define (outof-class)
  (list 
    @h3{@(outof-icon) Transitioning Out of Class}

    @p{End of class dismissal must always be @b{safe} and @b{organized}. All students must be released to an adult (a parent/guardian, or staff of another program) unless explicitly stated otherwise on the roster or by MetaCoders HQ staff.}

    @p{Create an ending-class @b{routine} to help you achieve this goal. Whether you walk the students to a dismissal location or release them from the room; create this routine on the very first day and stick with it.}

    @p{End-Class routines @b{must} include:}
   @ul{
      @li{Safe and organized dismissal to an adult for every student.}}

   @p{End-Class routines @i{can} include:}
   @ul{
      @li{Lining up at the door}
      @li{Sitting on "the rug" or at a specific table}
      @li{High five the coach before leaving (confirms checkout!)}
      @li{A verbal @(link-to "http://www.theteachertoolkit.com/index.php/tool/exit-ticket" "exit ticket") told to the coach before leaving}
      }
    ))




