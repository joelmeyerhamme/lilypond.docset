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
\sourcefileline 3455
#(use-modules (scm accreg))
\markup {
  \center-column {
     \stdBassIV #"Soprano"
     "\\stdBassIV #\"Soprano\""
     \vspace #1
     \stdBassIV #"Alto"
     "\\stdBassIV #\"Alto\""
     \vspace #1
     \stdBassIV #"Tenor"
     "\\stdBassIV #\"Tenor\""
     \vspace #1
     \stdBassIV #"Master"
     "\\stdBassIV #\"Master\""
  } \hspace #3
  \center-column {
     \stdBassIV #"Soft Bass"
     "\\stdBassIV #\"Soft Bass\""
     \vspace #1
     \stdBassIV #"Bass/Alto"
     "\\stdBassIV #\"Bass/Alto\""
     \vspace #1
     \stdBassIV #"Soft Bass/Alto"
     "\\stdBassIV #\"Soft Bass/Alto\""
     \vspace #1
     \stdBassIV #"Soft Tenor"
     "\\stdBassIV #\"Soft Tenor\""
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
