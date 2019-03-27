%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/profile-property-access.ly"
\sourcefileline 0
% -*- Scheme -*-

\header {
  texidoc = "This file profiles property accesses; the log file shows the top properties examined.
Note: lilypond must be compiled with --disable-optimising for this file to work."
}


#(ly:set-option 'profile-property-accesses #t)

\version "2.16.0"

\include "typography-demo.ly"
%\book { \score { {c4 } } }

#(define (prop-stats>?  x y)
  (cond
   ((> (cdr x) (cdr y)) #t)
   ((= (cdr x) (cdr y))
    (symbol<? (car x) (car y)))
   (else #f)))

#(define (display-stats what)
  (let*
   ((count 50)
    (rnd 10)
    (round-to (lambda (x) (* rnd (inexact->exact (round (/ x rnd))))))
    (alist (map (lambda (entry) (cons (car entry) (round-to (cdr entry)))) (hash-table->alist (ly:property-lookup-stats what))))
    (total (apply + (map cdr alist)))
   )

  (set! alist (acons 'TOTAL total alist))
   
  (ly:progress "\n\n~A properties, top ~a rounded to ~a\n\n~a"
   what count rnd
   (string-join
    (map (lambda (x) (format #f "~30a: ~6@a" (car x) (cdr x)))
     (ly:truncate-list! 
    (sort alist prop-stats>?) count))
    "\n"))))
   

				 
#(display-stats 'prob)
#(display-stats 'context)
#(display-stats 'grob)

  



% ****************************************************************
% end ly snippet
% ****************************************************************