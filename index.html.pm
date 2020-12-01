#lang pollen 
 



◊(require racket/format)
◊(require racket/list
         racket/function
         racket/draw
         racket/class
         pollen/decode
         pollen/tag
         pollen/setup
         pollen/core
         net/uri-codec
         txexpr
         )
◊(define (linky url . xs) `(a ((href ,url)) ,@xs))

◊(define (decode-hardwrapped-paragraphs xs)
  (define (no-linebreaks xs)
    (decode-linebreaks xs " "))
  (decode-paragraphs xs #:linebreak-proc no-linebreaks))

◊(define (root . elements)
    (decode-hardwrapped-paragraphs elements))

    
◊div[#:class "container"]{ 
◊h1{Blog title 1}
◊p{◊code{12/03/20}◊br{}
Welcome to the prototype website.
I hope you enjoy your stay,
and come back some day.}


