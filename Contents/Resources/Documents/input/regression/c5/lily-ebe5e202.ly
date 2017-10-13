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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/lyric-extender-rest.ly"
\sourcefileline 0

\header {

  texidoc = "If @code{extendersOverRests} is set, an extender
is not terminated upon encountering a rest. "

}

\paper {
  ragged-right = ##T
}

\version "2.19.21"

<<
  \new Voice = "one" \relative {
    c''4\melisma 
    c4 r c\melismaEnd c1
    c4 \melisma
    c4 r c\melismaEnd c1
    c4 \melisma
    c4 r c\melismaEnd c1
  }
  \new Lyrics \lyricsto "one" {
    Test __ "default"
    \set extendersOverRests = ##t 
    test __ \markup \typewriter "#t"
    \set extendersOverRests = ##f
    test __ \markup \typewriter "#f"
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************