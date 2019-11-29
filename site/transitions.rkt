#lang at-exp racket

(provide transitions-tab-pane
         game-to-story
         story-to-game)

(require website/bootstrap
         mc-classmaps/lib)

(define (transitions-tab-pane)
 (tab-pane id: "transitions" class: "p-3" 
  (h3 "Transitions")
  (p "Because there are only two acceptable classroom modalities, there are only 4 kinds of transitions coaches must be fluent in.  These are explained in the tabs below.  We also include a tab about attention getters -- which are tools to aid with transitions.")

  (tabify
   @active-tab-nav-link[href: "#s-g"]{@(story-icon) Story to @(game-icon) Game }
   @tab-nav-link[href: "#g-s"]{@(game-icon) Game to @(story-icon) Story}
   @tab-nav-link[href: "#g-g"]{@(game-icon) Game to @(game-icon) Game}
   @tab-nav-link[href: "#s-s"]{@(story-icon) Story to @(story-icon) Story}
   @tab-nav-link[href: "#attention"]{Attention Getters}

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
   (tab-pane id: "attention" 
    (container class: "p-3"
     (attention-getters))))))


(define (story-to-game)
  (list 
    @h3{@(story-icon) Story Mode to @(game-icon) Game Mode} 
    @p{Transitioning from Story Mode to Game Mode involves:
      @ul{
        @li{Ending the current story.}
        @li{Raising the energy level.}
        @li{Explaining the upcoming game.}
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

(define (attention-getters)
  (list 
    (h3 "Attention Getters")
    @p{The most effective attention getters are the ones you set up on the first day of class.  For this reason, most @b{Class Launch Maps} include some kind of call and response creation (see @b{Code of Awesomeness Mottos} Game Mode).  Coaches are encouraged to use these as attention getters in subsequent classes.}
    @p{The attention getter rule of thumb is: If it works, it's fine.  If you @(link-to "https://www.google.com/search?q=attention%20getters" "google for attention getters"), you'll find hundreds.  Most of them are based on the highly effective call/response model. Find your one favorite or build a repertoire of dozens.  That's up to the coach.}
    @p{Here's a video with several:}
    @html/inline{
      <iframe width="560" height="315" src="https://www.youtube.com/embed/78eiLtQjmss" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 
      }))

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





