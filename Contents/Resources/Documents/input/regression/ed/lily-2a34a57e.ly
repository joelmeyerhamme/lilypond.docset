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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/font-name-font-size.ly"
\sourcefileline 0
\version "2.16.0"

\header {
  texidoc = "
Setting the @code{font-name} property does not change the font
size.  The two strings below should be concatenated and have the
same font size.

Note that `the same font size' is related to what lilypond reports
on the console if in verbose mode (3.865234375 units for this
regression test).  If you actually look at the two fonts the
optical size differs enormously.
"
}

\markup \concat {
  "pfsm"
  \override #'(font-name . "Emmentaler-20")
  "pfsm"
}



% ****************************************************************
% end ly snippet
% ****************************************************************
