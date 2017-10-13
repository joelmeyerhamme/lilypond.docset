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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/staff-ledger-positions-dotted-notes.ly"
\sourcefileline 0
\header {

  texidoc = "When the vertical positions of ledger lines have been
customized by setting the @code{ledger-positions} property of the
StaffSymbol, and a dotted note falls on a ledger line, the dot is shifted
up to avoid the ledger line (just as with uncustomized ledger lines)."
}

\version "2.19.21"

\new Staff \relative {
  \override Staff.StaffSymbol.line-positions = #'(-3 0 3)
  \override Staff.StaffSymbol.ledger-positions = #'(-3 0)
  \override Staff.StaffSymbol.ledger-extra = #1
  f4. g a b c d g' a b c d e
}



% ****************************************************************
% end ly snippet
% ****************************************************************
