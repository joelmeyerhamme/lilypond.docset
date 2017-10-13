%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,quote,ragged-right,alt=[image of music]]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm - 2.0 * 0.4\in
  ragged-right = ##t
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 310
#(define (my-callback grob)
  (let* (
         ; l'objet a-t-il été divisé ?
         (orig (ly:grob-original grob))

         ; si oui, rechercher les morceaux frères (siblings)
         (siblings (if (ly:grob? orig)
                     (ly:spanner-broken-into orig) '() )))

   (if (and (>= (length siblings) 2)
             (eq? (car (last-pair siblings)) grob))
     (ly:grob-set-property! grob 'extra-offset '(-2 . 5)))))

\relative c'' {
  \override Tie #'after-line-breaking =
  #my-callback
  c1 ~ \break c2 ~ c
}



% ****************************************************************
% end ly snippet
% ****************************************************************