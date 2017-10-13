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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/page-turn-page-breaking-auto-first-page2.ly"
\sourcefileline 0
\version "2.16.0"

\header {
  texidoc = "By default, we start with page 1, which is on the right hand side
of a double page. In this example, auto-first-page-number is set to ##t.
Although the first measure could go on a page by itself, this would require
stretching the first page badly, so we should automatically set the first page
number to 2 in order to avoid a bad page turn."
}

\paper {
  page-breaking = #ly:page-turn-breaking
  auto-first-page-number = ##t
  print-first-page-number = ##t
}

#(set-default-paper-size "a6")

\layout {
  \context {
    \Staff
    \consists "Page_turn_engraver"
  }
}

\book {
  \score {
    {
      a b c d R1
      \repeat unfold 30 {a4 b c d}
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************