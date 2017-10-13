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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/line-dash-small-period.ly"
\sourcefileline 0
\header {

  texidoc = "Generate valid postscript even if dash-period is small
  compared to line thickness."

}

\version "2.17.6"

\relative c' {
  \override Staff.OttavaBracket.dash-period = #0.1
  \override Score.OttavaBracket.dash-fraction = #1

  \ottava #1
  c4 c
}




% ****************************************************************
% end ly snippet
% ****************************************************************