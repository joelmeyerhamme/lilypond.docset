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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/tablature-dot-placement.ly"
\sourcefileline 0
\version "2.19.21"

\header {

  texidoc = "
With full notation, the dots on the tablature heads should
respect two-digit fret numbers.
"

}

myMusic = \relative  {
  <f'\3 a c>4.
  <f\3 g d'>4.
  <f\3 a d>4
}

\score {
  <<
    \new Staff {
      \clef "treble_8"
      \myMusic
    }
    \new TabStaff {
      \tabFullNotation
      \myMusic
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************