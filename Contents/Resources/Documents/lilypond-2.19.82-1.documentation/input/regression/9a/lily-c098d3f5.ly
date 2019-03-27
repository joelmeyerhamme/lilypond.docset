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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/page-turn-page-breaking-badturns.ly"
\sourcefileline 0
\version "2.19.21"
#(ly:set-option 'warning-as-error #f)
#(ly:expect-warning (_ "cannot fit the first page turn onto a single page.  Consider setting first-page-number to an even number."))

\header {
    texidoc="If there are no good places to have a page turn,
the optimal-breaker will just have to recover gracefully. This
should appear on 3 pages.
"
}

\book {
  \paper {
    #(define page-breaking ly:page-turn-breaking)
    paper-height = #40
    print-page-number = ##t
  }

  \score {
    \relative {
      a b c d a b c d \break
      c d e f c d e f \break
      d e f g d e f g
    }
  }
}





% ****************************************************************
% end ly snippet
% ****************************************************************