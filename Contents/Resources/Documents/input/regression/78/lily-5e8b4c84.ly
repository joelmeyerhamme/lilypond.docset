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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/page-breaking-markup-padding.ly"
\sourcefileline 0
\version "2.16.0"

#(set-default-paper-size "a6")

\book {
  \header {
    texidoc = "Padding between markups is honored by the page
breaker.  This should take up two pages."
  }

  \paper {
    markup-markup-spacing = #'((padding . 300))
  }

  \markup "00"
  \markup "01"
  { c' }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
