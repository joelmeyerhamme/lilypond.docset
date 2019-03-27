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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/bar-number-check.ly"
\sourcefileline 0
\version "2.18.0"

\header {
  texidoc = "This checks the warning of @code{\\barNumberCheck}."
}

\layout { ragged-right = ##t }

#(ly:expect-warning (_ "Barcheck failed got ~a expect ~a") 2 3)
\book {
  \score {
    {
      c'2^\markup \with-color #green \bold "\\barNumberCheck #1"
      \barNumberCheck #1
      d'^\markup \with-color #red \bold "\\barNumberCheck #3"
      \barNumberCheck #3
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
