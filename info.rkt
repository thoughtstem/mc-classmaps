#lang info
(define collection "mc-classmaps")
(define deps '("base"))
(define build-deps 
  '("scribble-lib" "racket-doc" "rackunit-lib"
    "reprovide-lang"
    "https://github.com/thoughtstem/website.git"
    "https://github.com/thoughtstem/website-js.git"))
(define scribblings '(("scribblings/mc-classmaps.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(thoughtstem))
