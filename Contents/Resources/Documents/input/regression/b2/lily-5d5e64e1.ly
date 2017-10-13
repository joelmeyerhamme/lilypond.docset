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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/markup-score-multi-system.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "\\markup \\score displays all systems.  Spacing between
  systems is set using @code{baseline-skip}.
"
}


\markup {
  \override #'(baseline-skip . 10)
  \score {
    \new Staff \relative {
      c'4 d e f \break
      g1
    }
    \layout {
      indent = 0
      ragged-right = ##t
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************