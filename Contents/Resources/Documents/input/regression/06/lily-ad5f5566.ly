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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/partial-in-mid-piece.ly"
\sourcefileline 0
\version "2.19.11"

\header {
  texidoc = "@code{\\partial} can be can be called in mid-piece in
multiple contexts."
}


melodyOne = \relative {
  \time 6/8
  a'8 a a a a a |
  \partial 8
  d8 |
  c8 c c c c c |
}

chordsOne = \chordmode {
  \time 6/8
  a2. |
  \partial 8
  s8 |
  a2. |
}

\score {
  <<
    \set Score.barNumberVisibility = #all-bar-numbers-visible
    \override Score.BarNumber.break-visibility = #all-visible
    \new ChordNames { \chordsOne }
    \new Staff { \melodyOne }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
