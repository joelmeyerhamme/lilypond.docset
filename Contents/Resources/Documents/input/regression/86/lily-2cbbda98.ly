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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/stem-tremolo-staff-space.ly"
\sourcefileline 0
\header {

  texidoc = "stem tremolo vertical distance also obeys staff-space settings. "

}

\version "2.19.21"

\layout {
  ragged-right = ##t
}

fragment = \relative {
  c'4:64 c:64 c8:64 c:64 c:64 c:64 c:64
}


<<
  \new Staff \with {
    fontSize = #-4
    \override StaffSymbol.staff-space = #(magstep -4)
  }
  \fragment
  \new Staff \fragment
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
