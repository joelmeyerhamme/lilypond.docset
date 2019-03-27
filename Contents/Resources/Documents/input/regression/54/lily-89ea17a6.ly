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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/staff-online-symbol-absence.ly"
\sourcefileline 0
\version "2.19.21"
\header {

  texidoc = "Symbols that need on-staffline info (like dots and ties)
  continue to work in absence of a staff-symbol."

}

\new Staff \with {
  \remove "Staff_symbol_engraver"
}
\relative {
  \time 5/8
  f'4 ~ 4 
  f4 f4.
}



% ****************************************************************
% end ly snippet
% ****************************************************************
