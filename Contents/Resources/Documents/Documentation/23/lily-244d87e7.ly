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
\sourcefileline 2340
\relative c'' {
  c4( c^\markup { \tiny \sharp } d4.) c8 |
  c4(
    \once \override TextScript.avoid-slur = #'inside
    \once \override TextScript.outside-staff-priority = ##f
    c4^\markup { \tiny \sharp } d4.) c8 |
  \once \override Slur.outside-staff-priority = #500
    c4( c^\markup { \tiny \sharp } d4.) c8 |
}



% ****************************************************************
% end ly snippet
% ****************************************************************
