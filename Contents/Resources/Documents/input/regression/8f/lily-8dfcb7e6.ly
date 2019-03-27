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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/clef-ottava.ly"
\sourcefileline 0

\header
{
  texidoc = "Ottava brackets and clefs both modify Staff.middleCPosition,
but they don't confuse one another."
}

\version "2.19.21"

\layout { ragged-right = ##t} 

\relative  {
  \clef "alto"
  a' b c a
  \ottava #1
  a b c a
  \clef "bass"
  a b c a
  \ottava #2
  a b c a
  \clef "treble"
  \ottava #-1
  a b c a
}





% ****************************************************************
% end ly snippet
% ****************************************************************
