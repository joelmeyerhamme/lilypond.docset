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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/ambitus-with-ligature.ly"
\sourcefileline 0
\version "2.16.0"

\header {
  texidoc = "
A @code{\\Voice} should be able to contain both an @code{Ambitus_engraver}
and a @code{Mensural_ligature_engraver} without segfaulting.
  "
}

\new Voice \with  {
  \consists "Ambitus_engraver"
  \consists "Mensural_ligature_engraver"
  \remove "Ligature_bracket_engraver"
} {
  \cadenzaOn
  \[ c'\longa c''\longa \]
}



% ****************************************************************
% end ly snippet
% ****************************************************************
