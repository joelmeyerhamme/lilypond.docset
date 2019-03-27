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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/page-top-space.ly"
\sourcefileline 0
\header {

  texidoc = "By setting @code{page-top-space,} the Y position of the
first system can be forced to be uniform."

}
\version "2.19.21"

#(set-default-paper-size "a6")

\book {
  \score {

    \relative {
      c'1\break\pageBreak
      c1\break\pageBreak
      c1
      \break\pageBreak
      \override TextScript.padding = #20
      c1^"bla"
    }
  }

  \paper {
    obsolete-page-top-space = 3 \cm
    top-system-spacing.basic-distance = #(/ obsolete-page-top-space staff-space)
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************
