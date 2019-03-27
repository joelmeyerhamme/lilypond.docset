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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/note-head-southern-harmony.ly"
\sourcefileline 0
\header {

  texidoc = "Notes can be set in the Southern Harmony style."

}
\version "2.16.0"

\relative c' {
  \key c \major
  \southernHarmonyHeads
  c1 d e f g a b c d e f g a b c
  c,,2 d e f g a b c d e f g a b c
  c,,4 d e f g a b c d e f g a b c
}




% ****************************************************************
% end ly snippet
% ****************************************************************
