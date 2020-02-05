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

;add new tags to tag category lists, at end of file

(tags all-tags
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

      (define databases 
        (tag "databases"
             "Involves the concept of databases."))

      (define debugging 
        (tag "debugging"
             "Related to concepts and strategies for debugging."))

      (define coding
        (tag "coding"
             "Involves working with code."))

      (define software-engineering
        (tag "software engineering"
             "Uses authentic software engineering language.  Designed to communicate ideas, values, or concepts related to the construction of large software systems."))

      (define interface-design
        (tag "interface design"
             "About coders writing interfaces or experiences for others."))

      (define meta-cognition 
        (tag "meta-cognition"
             "Designed to encourage students to reflect on their own thinking processes -- either in general or in relation to a recent activity."))

      (define historical 
        (tag "historical"
             "Related to the history of coding and computer science."))

      (define cultural 
        (tag "cultural"
             "Related to the culture of coding and computer science."))

      (define teamwork
        (tag "teamwork"
             "Builds teamwork skills."))

      (define communication
        (tag "communication"
             "Builds communication skills."))

      (define language
        (tag "language games"
             "Builds skills and experience working with language creation and acquisition."))

      (define patterns
        (tag "patterns"
             "Builds pattern recognition and matching skills."))

      (define cs-concept
        (tag "cs-concept"
             "Teaches a broad Computer Science concept."))

      (define memorization
        (tag "memorization"
             "Utilizes code memorization as a path to fluency."))
      
      (define reflection 
        (tag "reflection"
             "Designed to encourage students to reflect on their own stories -- either that day or over a longer period of time."))

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

      (define name-game
        (tag "name game"
             "Icebreaker to get to know students and student names."))

      (define intro-new-code
        (tag "intro new code"
             "Great for introducing new coding concepts that the students have yet to work with."))

      (define simple
        (tag "simple"
             "Especially easy and straight-forward."))

      (define active
        (tag "active"
             "An active mode that involves most or all Players moving."))

      (define multi 
        (tag "multi-story"
             "Contains multiple stories within one story."))

      (define fable 
        (tag "fable"
             "Communicates morals about coding or language learning \"coded\" in the form of an alegory, usually with animal characters -- e.g. Aesop's Fables."))

      (define meta-classroom
        (tag "meta-classroom"
             "About the class itself -- i.e. what will happen in the future (foreshadowing) or what has happened in the past (reflection).  Useful for organizing discussions related to classroom norms."))

      (define badges 
        (tag "badges"
             "Related to badges - a classroom gamification tool."))
      
      (define code-of-awesomeness
        (tag "code of awesomeness"
             "Directly related to the Codes."))

      (define true-story
        (tag "true story"
             "Story based on reality.  Names may have been changed."))

      (define young-engineer
        (tag "young engineer"
             "About young protagonists using code to solve problems relevant to young people."))
      
     )

;======TAG GROUPS =====

(define age-tags
  ;tags designating age groups mode works best for 
  (list k2
        3rd-5th
        middle-school
        high-school))

(define software-skills-tags
      ;tags indicating computer science/software/hard skills
      (list databases
            debugging
            coding
            software-engineering
            interface-design))


(define soft-skills-tags
      ;tags indicating soft/social/people skills
      (list meta-cognition
            historical
            cultural
            teamwork
            communication
            language
            patterns
            cs-concept))


(define educational-techniques-tags
      ;tags indicating specific coaching techniques utilized
      (list memorization
            reflection
            review
            unplugged
            partners
            competitive
            competitive-option
            name-game
            intro-new-code
            simple
            active))

(define misc-tags
      ;yet uncategorized tags
      (list multi
            fable
            meta-classroom
            badges
            code-of-awesomeness
            true-story
            young-engineer))


      



