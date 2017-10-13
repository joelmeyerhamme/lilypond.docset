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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/tablature-harmonic-functions.ly"
\sourcefileline 0
\version "2.17.30"

\header {
  texidoc = "
Harmonics can be specified either by ratio or by fret number.
"
}

test = {
 e,4
 \harmonicByRatio #1/2  e,\6
 \harmonicByRatio #1/3  a,\5
 \harmonicByRatio #2/3  d,\4 |
 \harmonicByRatio #1/4 { g8\3 b\2 e'\1 b\2 < g b e >2 } |
 e,1 | % check whether tab note head is restored
 \harmonicByFret #12 e'4\1 ~
 \harmonicByFret #12 e'4\1 (
 \ottava #1
 \harmonicByFret #7 e'4\1)
 \harmonicByFret #5 e'8\1
 \ottava #2
 \harmonicByFret #4 < b\2 e'\1 >8 |
 \harmonicByFret #3 < g\3 b\2 e'\1 >4
 \harmonicByFret #2.7 < g\3 b\2 e'\1 >4
 \harmonicByFret #2.3 < g\3 b\2 e'\1 >4
 \harmonicByFret #2 < g\3 b\2 e'\1 >4 |
 \ottava #0
 e,1 | % check whether tab note head is restored
}

\paper {
  ragged-right = ##f
}

\score {
  <<
    \new Staff {
      \new Voice \with { \omit StringNumber } {
        \clef "treble_8"
        \test
      }
    }
    \new TabStaff {
      \new TabVoice {
        \test
      }
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************