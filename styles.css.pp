#lang pollen

@import url('fonts/normalize.css');
@import url('fonts/fonts.css');

/* Mobile portrait min font */

html {
    font-size: 22px;
    height: 100%;
    }
::selection {
  background: Palegreen;
    }
code {
    font: ◊mono-font;
    background-color: lightblue;
    }

h1 {
    font-weight: 500;
    margin-bottom: 0;
   }
/* Start increasing type size dynamically at screen widths of 768px */
@media (min-width: 768px) { 
    html { font-size: 2.8vw; } 
}

/* Top out at 23px for screens up to 800px TALL */
@media only screen and (min-width: 1000px) and (max-height: 800px) {
  html { font-size: 26px; } /* =  2.6% of 1000px (min-width) */
}

/* Top out at 28px for screens 801px-1000px TALL */
@media (min-width: 1000px) and (max-height: 920px) { 
   html { font-size: 28px; }     /* =  2.8% of 1000px (min-width) */
}

/* For screens taller than 1000 px, top out at 32px */
@media (min-width: 1178px) and (min-height: 921px) {
    html { font-size: 33px; }    /* =  2.8% of 1178px (min-width) */
}

◊(define LINEHEIGHT 1.3)
◊(define lineheight (string-append (number->string LINEHEIGHT) "rem"))
◊(define (x-lineheight multiple)
    (string-append (real->decimal-string (* LINEHEIGHT multiple) 2) "rem"))
◊(define (derive-lineheight lines #:per-lineheight per)
    (string-append (real->decimal-string (/ (* LINEHEIGHT per) lines) 3) "rem"))



◊(define color-bodytext   "#2a3d45") ◊; Japanese indigo, baby
◊(define color-pagehead   "#a81606") ◊; for Faded gold, a29555
◊(define color-link       "#ab2a23")
◊(define color-linkhover  "#c14337")
◊(define color-xrefmark   "#c14337")
◊(define color-background "#f7f7f7")
◊(define color-linkbackground "#f7f7f7")

◊(define body-font "'IBM Plex Sans'")
◊(define mono-font "'IBM Plex Mono', monospace")



◊(define normal-font-features
  "\"calt\" on, \"liga\" on, \"clig\" on, \"kern\" on, \"onum\" on, \"pnum\" on")
body { height: 100%; /* height and flex are to keep footer stuck to bottom of page */ margin: 0; padding-left: .5%; background: ◊|color-background|; font: ◊|body-font|; /* Typography: `line-height` is important!  All verticle rhythm based on this value. */ line-height: ◊|lineheight|; font-family: ◊|body-font|; font-feature-settings: ◊normal-font-features; color: ◊color-bodytext; /* Japanese Indigo, baby */ } .logo{ } 
  li{
  vertical-align: middle;
  flex-wrap: wrap;
  align-items: center
  line-height: 100px;
  text-align: center;
  margin-right: 10%;
}

a:link{
  text-decoration: none;
}

a:active {
  background-color: pink;  
  border-bottom-width: 5px;
  border-color: ◊color-bodytext;
}


  .container{
    padding-left: 5%;
}
