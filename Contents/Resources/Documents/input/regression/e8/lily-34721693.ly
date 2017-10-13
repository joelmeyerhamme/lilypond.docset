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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/header-toplevel-multiple.ly"
\sourcefileline 0
\version "2.16.0"
\header {
  texidoc="
A second top-level header block shall not entirely replace a first header block, but only changed variables.
"
  piece = "Piece correct (set at top level)"
  title = "Title incorrect (to be superseded at top level)"
}
\header {
  % This should NOT overwrite the piece from above!
  title = "Title correct (superseded at top level)"
}
\markup \vspace #3
\markup { \bold Note: expect title and piece. }
\markup \vspace #3

\score {
  \new Staff { c'4 }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
