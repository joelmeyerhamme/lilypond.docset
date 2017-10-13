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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/beam-auto.ly"
\sourcefileline 0

\version "2.16.0"
\header{
  texidoc = "@cindex Beaming Presets
There are presets for the @code{auto-beam} engraver in the case of common
time signatures. " }

\relative c''{

  \time 1/2

  c8 c c c
  c16 c c c c c c c
  c32 c c c c c c c c c c c c c c c
  \time 1/4
  c8 c
  c16 c c c
  c32 c c c c c c c
  \time 1/8
  c8
  c16 c
  c32 c c c

  \time 2/2
  c8 c c c c c c c
  c16 c c c c c c c c c c c c c c c
  c32 c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c
  \time 2/4
  c8 c c c
  c16 c c c c c c c
  c32 c c c c c c c c c c c c c c c
  \time 2/8
  c8 c
  c16 c c c
  c32 c c c c c c c
  \time 3/2
  c8 c c c c c c c c c c c
  c16 c c c c c c c c c c c c c c c c c c c c c c c
  c32 c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c
  \time 3/4
  c8 c c c c c
  c16 c c c c c c c c c c c
  c32 c c c c c c c c c c c c c c c c c c c c c c c
  \time 3/8
  c8 c c
  c16 c c c c c
  c32 c c c c c c c c c c c
  \time 4/4
  c8 c c c c c c c
  c16 c c c c c c c c c c c c c c c
  c32 c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c
  \time 4/8
  c8 c c c
  c16 c c c c c c c
  c32 c c c c c c c c c c c c c c c
  \time 4/16
  c8 c
  c16 c c c
  c32 c c c c c c c
  \time 6/8
  c8 c c c c c
  c16 c c c c c c c c c c c
  c32 c c c c c c c c c c c c c c c c c c c c c c c
  \time 9/8
  c8 c c c c c c c c
  c16 c c c c c c c c c c c c c c c c c
  c32 c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c
  \time 12/8
  c8 c c c c c c c c c c c
  c16 c c c c c c c c c c c c c c c c c c c c c c c
  c32 c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c
}




% ****************************************************************
% end ly snippet
% ****************************************************************
