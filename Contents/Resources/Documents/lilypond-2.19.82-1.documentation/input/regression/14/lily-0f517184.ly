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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/spacing-correction-accidentals.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "If right hand stems have accidentals, optical spacing
correction is still applied, but only if the stem directions are
different."
}

\relative {
  \time 2/4
  c'8 cis''
  cis8 cis,,
}



% ****************************************************************
% end ly snippet
% ****************************************************************