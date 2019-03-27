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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/lyric-extender-right-margin.ly"
\sourcefileline 0
\version "2.19.21"
\header {
  texidoc = "Extenders will not protrude into the right margin"
  }

\score{
  {
    \relative {
      c'4 d e f ~ | \break
      f4 e d c |
    }

    \addlyrics {
      c d e effffffffffff __
      e d c
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
