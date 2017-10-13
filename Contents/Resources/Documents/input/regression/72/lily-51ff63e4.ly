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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/volta-bracket-vertical-skylines.ly"
\sourcefileline 0
\version "2.16.0"

\header {
  texidoc = "Volta brackets are vertically fit to objects below them.
"
}

\new Staff {
  \repeat volta 3 { r2 a''''4 r4 }
  \alternative { { r2 d''''4 r4 } { r2 d''''4 r4 } { r2 d''''4 r4 } }
  \repeat volta 3 { r2 a''''4 r4 }
  \alternative { { r2 a''''4 r4 } { r2 a''''4 r4 } { r2 a''''4 r4 } }
}


% ****************************************************************
% end ly snippet
% ****************************************************************
