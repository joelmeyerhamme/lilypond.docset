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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/dot-column-rest-collision.ly"
\sourcefileline 0
\header {
  texidoc = "Dot columns do not trigger beam slanting too early.
This input should compile with no programming error message,
and the dots should be correctly placed on their rests."
}

\version "2.16.0"
\paper{ ragged-right=##t }
<<
  { e''8 e'' g'' g'' g''16[ r8. r8. g''16] } \\
  { e8 r4. c'16[ r8. <a' b' c''>8. e'16] }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
