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
\sourcefileline 3309
#(use-modules (scm accreg))
\markup {
  \center-column {
     \freeBass #"1"
     "\\freeBass #\"1\""
     \vspace #1
     \freeBass #"10"
     "\\freeBass #\"10\""
  } \hspace #3
  \center-column {
     \freeBass #"11"
     "\\freeBass #\"11\""
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
