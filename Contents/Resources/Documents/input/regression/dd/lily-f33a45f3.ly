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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/metronome-mark-loose-column.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Metronome marks aligned on notes do not interfere with
the positioning of loose columns in other staves.  Here the loose
column supporting the clef is correctly placed immediately before
the second note in the lower staff."
}

\score {
  <<
    \new Staff \relative {
      c'8 c c c
      \tempo 4 = 60
      c2
    }
    \new Staff \relative {
      c'2 \clef bass c2
    }
  >>
  \layout {
    \context {
      \Score
      \override NonMusicalPaperColumn.stencil = #ly:paper-column::print
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************