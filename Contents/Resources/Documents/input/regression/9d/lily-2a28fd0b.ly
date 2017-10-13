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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/spacing-loose-polyphony.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Loose columns (here, the treble clef) are spaced
correctly in polyphonic music.
"
}

\new PianoStaff <<
  \new Staff \relative {
    \tuplet 3/2 { g'4 a2 }
  }
  \new Staff \relative {
    \clef bass fis,8 cis'
    \clef treble g'' fis,
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
