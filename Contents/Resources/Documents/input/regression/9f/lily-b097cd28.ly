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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/chord-repetition.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "
A repetition symbol can be used to repeat the previous chord and save
typing.  Only note events are copied: articulations, text scripts,
fingerings, etc are not repeated.
"
}

\relative {
  <c'-1 e-3 g-5>8\p( q) q4-! q8.\(^"text" q16 q4-!\)
}



% ****************************************************************
% end ly snippet
% ****************************************************************
