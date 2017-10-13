%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote]
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
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1206
desaturate =
\applyContext
  #(lambda (context)
     (define (desaturate-grob grob)
       (let* ((grob-def (ly:context-grob-definition context grob))
              (color (ly:assoc-get 'color grob-def black))
              (new-color (map (lambda (x) (min 1 (/ (1+ x) 2))) color)))
         (ly:context-pushpop-property context grob 'color new-color)))
     (for-each desaturate-grob '(NoteHead Stem Beam)))

\relative {
  \time 3/4
  g'8[ g] \desaturate g[ g] \desaturate g[ g]
  \override NoteHead.color = #darkred
  \override Stem.color = #darkred
  \override Beam.color = #darkred
  g[ g] \desaturate g[ g] \desaturate g[ g]
}



% ****************************************************************
% end ly snippet
% ****************************************************************
