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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/hara-kiri-percent-repeat.ly"
\sourcefileline 0
\version "2.16.0"

\header {
  texidoc = "Staves, RhythmicStaves, TabStaves and DrumStaves
  with percent repeats are not suppressed."
}

<<
  \new Staff { c''1 c'' \break c'' c'' }
  \new Staff \repeat percent 4 { c'1 }
  \new TabStaff \repeat  percent 4 { c1 }
  \new DrumStaff \drummode { \repeat percent 4 { hh1 } }
  \new RhythmicStaff \repeat percent 4 { c'1 }
>>

\layout {
  \context { \Staff \RemoveEmptyStaves }
  \context { \RhythmicStaff \RemoveEmptyStaves }
  \context { \DrumStaff \RemoveEmptyStaves }
  \context { \TabStaff \RemoveEmptyStaves }
}



% ****************************************************************
% end ly snippet
% ****************************************************************