#lang at-exp racket

(provide 
 (struct-out game-mode)
 (struct-out story-mode)
 (struct-out classmap))

(require website/bootstrap)


;MOVE TO BASE.

(struct game-mode  (name minutes data))
(struct story-mode (name minutes data))
(struct classmap   (name modes))

;END BASE

;MOVE TO lib/game-modes

(provide coa-mottos)

(define (coa-mottos)
  (game-mode "Code of Awesomeness Mottos" 10
    (div
      (p "Have them come up with mottos for the following ...")
      (ipsum 50))))


;END 

;MOVE TO lib/story-modes

(provide coa-stories coach-story)

(define (coa-stories)
  (story-mode "Code of Awesomeness Stories" 10
    (div
      (p "Read the following stories...")
      (ipsum 50))))

(define (coach-story)
  (story-mode "Coach Story" 5
    (div
      (p "Tell your coach story")
      (ipsum 50))))

;END 

;MOVE TO lib/classmaps

(provide all-classmaps 
         class-launch-map)

(define (class-launch-map)
  (classmap "Class Launch Map"
    (list (coach-story)
          (coa-stories)
          (coa-mottos)))) 

(define all-classmaps 
  (list (class-launch-map)))


;MOVE TO lib/rendering

(provide classmaps->html
         classmap->html)

(define (classmaps->html cms)
  (map classmap->html cms))

(define (classmap->html cm)
 (define content-id (gensym 'content-id))
 (card
  @style/inline{
    .fade {
      opacity: 0;
      -webkit-transition: opacity 0.15s linear;
      -moz-transition: opacity 0.15s linear;
      -o-transition: opacity 0.15s linear;
      transition: opacity 0.15s linear;
    }
    .fade.in {
      opacity: 1;
    }
  }
  (card-header (classmap-name cm))
  (card-body
   (row
    (col
     (map (curry mode->html #:content-id content-id) 
      (classmap-modes cm)))

    (col id: content-id)))))

(define (mode->html #:content-id content-id m)
  (if (story-mode? m)
    (story-mode->html content-id m)
    (game-mode->html content-id m)))

(define (game-mode->html content-id g)
 (define id (gensym 'game-mode))
 (define local-content-id
   (~a id "-content"))

 (list
  (card-group
    'onClick: (display-content local-content-id content-id)
   (card class: "order-last order-sm-first"
    'data-toggle: "modal" 
    'data-target: (~a "#" id)
    (card-header 
      class: "bg-dark text-white"
      style: (properties height: 
               (sub1 (* 10 (game-mode-minutes g))))
      (game-mode-minutes g) " minutes"))
   (card
    class: "text-white bg-dark order-first order-sm-last"
    'data-toggle: "modal" 
    'data-target: (~a "#" id)
    (card-header 
      class: "text-truncate h-100"
      'data-toggle: "tooltip"
      'data-placement: "right"
      'title: (game-mode-name g)
      (i class: "fas fa-chess-knight")
      " "
      (game-mode-name g)))
    (template id: (~a id "-content")
      (mode->content-card g)))))

(define (story-mode->html content-id s)
 (define id (gensym 'story-mode))
 (define local-content-id
   (~a id "-content"))
 (list
  (card-group
    'onClick: (display-content local-content-id content-id)
   (card
    class: "bg-light"
    (card-header 
      class: "text-truncate h-100"
      'data-toggle: "tooltip"
      'data-placement: "left"
      'title: (story-mode-name s)
      (i class: "fas fa-book")
      " "
      (story-mode-name s)))

   (card
    (card-header 
     style: (properties height: 
                (sub1 (* 10 (story-mode-minutes s))))
     (story-mode-minutes s) " minutes"))
   
   (template id: local-content-id 
     (mode->content-card s)))))

(define (display-content local-content-id content-id)
  @~a{
    document.getElementById("@content-id").innerHTML = document.getElementById("@local-content-id").innerHTML; 

    setTimeout(()=>{
      $(document.getElementById("@content-id").childNodes[0]).addClass("in");
    }, 100)
    })

(define (mode->content-card s)
 (define mode-data (if (story-mode? s)
                      story-mode-data
                      game-mode-data))
 (define mode-name (if (story-mode? s)
                      story-mode-name
                      game-mode-name))

 (define bg-color (if (story-mode? s)
                      ""
                      "bg-dark"))

 (define text-color (if (story-mode? s)
                      ""
                      "text-white"))

 (define icon (if (story-mode? s)
               (i class: "fas fa-book")
               (i class: "fas fa-chess-knight")))

 (card
  class: (~a "fade" " " bg-color " " text-color)
  (card-header icon " " (mode-name s))
  (card-body
   (mode-data s))))







