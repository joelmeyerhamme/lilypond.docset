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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/tuplet-number-slur-script.ly"
\sourcefileline 0
\version "2.17.11"

\header {
  texidoc = "Tuplet number position is correct when slurs and scripts
are present.
"
}

\relative c'
{
  R1 |
  \break
  \tuplet 3/2 { e8(-> e e) }
}



% ****************************************************************
% end ly snippet
% ****************************************************************