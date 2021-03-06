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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/repeat-line-break.ly"
\sourcefileline 0
\version "2.16.0"

\header{
  texidoc="
Across linebreaks, the left edge of a first and second alternative
bracket should be equal.
"
}

\layout { ragged-right= ##t }

\context Staff\relative c''  {
  \repeat "volta" 2 { c1 \break } \alternative { d e }
  c1
  \repeat "volta" 2 { c1 } \alternative { { d \break}  e }

}





% ****************************************************************
% end ly snippet
% ****************************************************************
