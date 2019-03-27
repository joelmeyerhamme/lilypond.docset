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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/dot-column-engraver.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Dot Columns are engraved in the Staff by default,
enabling dots to move vertically to make room for dots from another voice.
If Dot_column_engraver is moved to Voice, separate dot columns are engraved,
and these dots avoid notes in other voices."
}

music = \relative { \time 3/4 << {
  <d'' f g>4. c c b g f a <a b> a <a' b>
} \\ \tuplet 2/1 {
  <f, g b>2. a-- <a b> <g a>-. a2. a-- a a b <a b> \bar "|."
} >> }

\score{ \music }
\markup "move Dot_column_engraver to Voice :"
\score{ \music
\layout {
  \context {\Staff \remove "Dot_column_engraver"}
  \context {\Voice \consists "Dot_column_engraver"}
}}



% ****************************************************************
% end ly snippet
% ****************************************************************
