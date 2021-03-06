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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/completion-heads-tie.ly"
\sourcefileline 0
\header {

  texidoc = "Completion heads will remember ties, so they are started
  on the last note of the split note."

  }

\version "2.19.21"

\paper{ ragged-right=##t }

\new Staff \new Voice \with { 
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
} {
  \relative { r2 d''1 ~ 1 d2 }
}




% ****************************************************************
% end ly snippet
% ****************************************************************
