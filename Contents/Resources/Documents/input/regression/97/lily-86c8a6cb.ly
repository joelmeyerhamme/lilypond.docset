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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/page-turn-page-breaking-badturns.ly"
\sourcefileline 0
\version "2.12.0"

\header {
    texidoc="If there are no good places to have a page turn,
the optimal-breaker will just have to recover gracefully. This
should appear on 3 pages.
"
}

\book {
  \paper {
    #(define page-breaking ly:page-turn-breaking)
    paper-height = #60
    print-page-number = ##t
  }

  \score {
    \relative c' {
      a b c d a b c d \break
      c d e f c d e f \break
      d e f g d e f g
    }
  }
}





% ****************************************************************
% end ly snippet
% ****************************************************************