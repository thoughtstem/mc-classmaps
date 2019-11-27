#lang at-exp racket

(provide preview-classmaps
         classmaps-index
         (all-from-out mc-classmaps/site/transitions)
         (all-from-out mc-classmaps/site/game-modes)
         (all-from-out mc-classmaps/site/story-modes)
         (all-from-out mc-classmaps/site/classmaps))

(require website/bootstrap
         mc-classmaps/lib
         mc-classmaps/site/transitions
         mc-classmaps/site/game-modes
         mc-classmaps/site/story-modes
         mc-classmaps/site/classmaps)

(define (classmaps-index)
 (page index.html
  (content
    (container
     (tabify 
      (active-tab-nav-link href: "#classmaps" "Classmaps")
      (tab-nav-link href: "#story-modes" (story-icon )" Story Modes")
      (tab-nav-link href: "#game-modes" (game-icon) " Game Modes")
      (tab-nav-link href: "#transitions" "Transitions")

      (classmap-tab-pane)
      (story-mode-tab-pane)
      (game-mode-tab-pane)
      (transitions-tab-pane))))))

(define (preview-classmaps)
 (list
  (classmaps-index)
  (bootstrap-files)))




