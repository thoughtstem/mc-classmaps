#lang racket

(provide preview-classmaps
         classmaps-index-content
         classmaps-index)

(require website/bootstrap
         mc-classmaps/lib)

(define (classmaps-index-content)
 (map classmap->html all-classmaps))

;TODO: Extract helpers for tabbed content
;TODO: Populate transitions 
;TODO: Populate games
;TODO: Populate stories
;TODO: Organize by tags


(define (classmaps-index)
 (page index.html
  (content
    (container
     (ul class: "nav nav-tabs" 'role: "tablist"
       (li class: "nav-item active"
           (a class: "nav-link active" 'data-toggle: "tab" href: "#classmaps" "Classmaps"))
       (li class: "nav-item"
           (a class: "nav-link" 'data-toggle: "tab" href: "#game-modes" "Game Modes"))
       (li class: "nav-item"
           (a class: "nav-link" 'data-toggle: "tab" href: "#story-modes" "Story Modes"))
       (li class: "nav-item"
           (a class: "nav-link" 'data-toggle: "tab" href: "#transitions" "Transitions")))
    (div class: "tab-content"
      (container id: "classmaps" class: "tab-pane fade in active"
        (h3 "Classmaps")
        (classmaps-index-content))
      (container id: "game-modes" class: "tab-pane fade"
        (h3 "Game Modes")
        (h3 "Game Modes coming soon"))
      (container id: "story-modes" class: "tab-pane fade"
        (h3 "Story Modes")
        (h3 "Story Modes coming soon"))
      (container id: "transitions" class: "tab-pane fade"
        (h3 "Transitions")
        (p "There are 4 kinds of transitions")

        (ul class: "nav nav-tabs" 'role: "tablist"
         (li class: "nav-item active"
          (a class: "nav-link active" 'data-toggle: "tab" href: "#s-g" "Story to Game"))
         (li class: "nav-item"
          (a class: "nav-link" 'data-toggle: "tab" href: "#g-s" "Game to Story"))
         (li class: "nav-item"
          (a class: "nav-link" 'data-toggle: "tab" href: "#g-g" "Game to Game"))
         (li class: "nav-item"
          (a class: "nav-link" 'data-toggle: "tab" href: "#s-s" "Story to Story")))

        (div class: "tab-content"
          (container id: "s-g" class: "tab-pane fade in active"
            (h3 "Story to Game"))
          (container id: "g-s" class: "tab-pane fade"
            (h3 "Game to Story"))
          (container id: "g-g" class: "tab-pane fade"
            (h3 "Game to Game"))
          (container id: "s-s" class: "tab-pane fade"
            (h3 "Story to Story"))
            )
      )))
      )))

(define (preview-classmaps)
 (list
  (classmaps-index)
  (bootstrap-files)))




