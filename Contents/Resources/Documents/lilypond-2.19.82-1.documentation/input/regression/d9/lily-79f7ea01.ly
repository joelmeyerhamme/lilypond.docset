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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/auto-beam-breathe.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Automatic beams are ended early if a breathing sign is
encountered."
}

\relative {
  \time 1/1
  \repeat unfold 8 c'8
  c8 c
  \breathe
  c8 c c c c
  \breathe
  c8
}



% ****************************************************************
% end ly snippet
% ****************************************************************
