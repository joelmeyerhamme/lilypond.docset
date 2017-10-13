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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/grob-tweak.ly"
\sourcefileline 0
\header
{

  texidoc = "With the @code{\\tweak} function, individual grobs that
  are directly caused by events may be tuned directly."

}

\version "2.17.6"
\paper {
  ragged-right = ##t
}

{
  \set fingeringOrientations = #'(right)
  <
    \tweak font-size #3  c
    \tweak color #red  d-\tweak font-size #8 -4
    \tweak style #'cross  g
    \tweak duration-log #1  a
  >4
}



% ****************************************************************
% end ly snippet
% ****************************************************************