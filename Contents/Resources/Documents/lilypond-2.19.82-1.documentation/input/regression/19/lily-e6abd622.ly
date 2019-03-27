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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/markup-column-align.ly"
\sourcefileline 0
\version "2.16.0"
\header {

texidoc = "Fixed horizontal alignment of columns of text can be set using
\left-column, \center-column and \right-column.
"

}

\markup {
  \line {
    \left-column {
      one
      two
      three
    }
    \hspace #4
    \center-column {
      one
      \left-align
      two
      three
    }
    \hspace #6
    \right-column {
      one
      two
      three
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
