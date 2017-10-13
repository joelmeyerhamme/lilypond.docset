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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/chord-names-in-grand-staff.ly"
\sourcefileline 0
\version "2.19.21"

\header {

  texidoc = "
GrandStaff contexts accept chord names.  The chord name in this
example should be printed above the top staff.
"
}

\score {
   \new GrandStaff
   <<
    \chords {
      f1
    }
    \new Staff {
      \relative {
        a'4 a a a
      }
    }
    \new Staff {
      \clef "bass"
      \relative {
        a,4 a a a
      }
    }
   >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************