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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/tablature-default-strings.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "
Context property @code{defaultStrings} defines desired strings
for fret calculations if no strings are defined explicitly.
"
}

mymusic = \relative {
  <c c'>4
  \set defaultStrings = #'(5 3)
  <c c'>4
  <d d'>4
  <e e'>4
  <c c'>2\6\4
  \unset defaultStrings
  <c c'>2
}

\score {
  <<
    \new Staff {
      \clef "treble_8"
      \mymusic
    }
    \new TabStaff {
      \mymusic
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
