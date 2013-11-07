%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/page-top-space.ly"
\sourcefileline 0
\header {

  texidoc = "By setting @code{page-top-space,} the Y position of the
first system can be forced to be uniform."

}
\version "2.12.0"

#(set-default-paper-size "a6")

\book {
  \score {

    \relative {
      c1\break\pageBreak
      c1\break\pageBreak
      c1
      \break\pageBreak
      \override TextScript #'padding = #20
      c1^"bla"
    }
  }

  \paper {
    page-top-space = 3 \cm
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************