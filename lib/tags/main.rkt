#lang racket

(provide (struct-out tag))

(struct tag (name desc))

(define-syntax-rule (tags all-tags-name (def name t) ...)
 (begin
   (provide name) ...
   (def name t) ...
   (provide all-tags-name)
   (define (all-tags-name) 
     (sort
       (list name ...)
       string<?
       #:key tag-name))))

(tags all-tags
  (define multi 
    (tag "multi-story"
         "Contains multiple stories within one story."))

  (define fable 
    (tag "fable"
         "Communicates morals about coding or language learning \"coded\" in the form of an alegory, usually with animal characters -- e.g. Aesop's Fables."))

  (define meta-classroom
    (tag "meta-classroom"
         "About the class itself -- i.e. what will happen in the future (foreshadowing) or what has happened in the past (reflection).  Useful for organizing discussions related to classroom norms."))


  (define reflection 
    (tag "reflection"
         "Designed to encourage students to reflect on their own stories -- either that day or over a longer period of time."))

  (define meta-cognition 
    (tag "meta-cognition"
         "Designed to encourage students to reflect on their own thinking processes -- either in general or in relation to a recent activity."))

  (define badges 
    (tag "badges"
         "Related to badges - a classroom gamification tool."))

  (define historical 
    (tag "historical"
         "Related to the history of coding and computer science."))

  (define cultural 
    (tag "cultural"
         "Related to the culture of coding and computer science."))

  (define debugging 
    (tag "debugging"
         "Related to concepts and strategies for debugging."))

  (define code-of-awesomeness
    (tag "code of awesomeness"
         "Directly related to the Codes."))

  (define coding
    (tag "coding"
         "Involves working with code."))

  (define memorization
    (tag "memorization"
         "Utilizes code memorization as a path to fluency."))

  (define teamwork
    (tag "teamwork"
         "Emphasizes teamwork."))

  (define k2
    (tag "young elementary"
         "Works exceptionally well for younger elementary students."))

  (define 3rd-5th
    (tag "upper elementary"
         "Works exceptionally well for upper elementary students."))

  (define middle-school
    (tag "middle school"
         "Works exceptionally well for middle school students."))

  (define high-school
    (tag "high school"
         "Works exceptionally well for high school students."))

  (define review
    (tag "review"
         "Great for reviewing code previously learned."))

  (define unplugged
    (tag "unplugged"
         "No computers required."))

  (define partners
    (tag "partners"
         "Partnering up is required or recommended."))

  (define competitive
    (tag "competitive"
         "Competition is inherent."))

  (define competitive-option
    (tag "competitive option"
         "Competition is not required, but can be added easily."))
  )



