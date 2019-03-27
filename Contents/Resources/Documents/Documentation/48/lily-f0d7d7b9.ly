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
\sourcefileline 2517
music = \relative {
  \tagGroup #'(violiI violiII viola violoncel)
  \tag #'violiI { c''4^"violiI" c c c }
  \tag #'violiII { a2 a }
  \tag #'viola { e8 e e2. }
  \tag #'violoncel { d'2 d4 d }
  R1^"untagged"
}

\new Voice {
  \keepWithTag #'violiI
  \music
}



% ****************************************************************
% end ly snippet
% ****************************************************************