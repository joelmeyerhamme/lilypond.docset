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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/push-to-tag.ly"
\sourcefileline 0
\version "2.16.0"

\header{
  texidoc="
Adding material to a tag in sequential and simultaneous expressions
using @code{\\pushToTag} and @code{\\appendToTag}.  One should get the
equivalent of
@example
@{ c' e' g' <<c' e' g' c''>> <<c'' g' e' c'>> g' e' c' @}
@end example
"
}

\layout { ragged-right = ##t }

test = { \tag #'here { \tag #'here <<c''>> }}

{
  \pushToTag #'here c'
  \pushToTag #'here e'
  \pushToTag #'here g' \test
  \appendToTag #'here c'
  \appendToTag #'here e'
  \appendToTag #'here g' \test
}




% ****************************************************************
% end ly snippet
% ****************************************************************
