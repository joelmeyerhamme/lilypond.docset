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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/spacing-measure-length.ly"
\sourcefileline 0
\header {

  texidoc = "Horizontal spacing is bounded by the current measure length.
This means that the 3/8 setting does not affect the whole rest spacing." 

}


\version "2.17.11"

\layout {
  ragged-right = ##t
}

\score {
  \new Staff \with {
    \remove "Separating_line_group_engraver"
  } {
    \relative c' {
      \override Score.SpacingSpanner.uniform-stretching = ##t
      \set Score.proportionalNotationDuration = #(ly:make-moment 4/25)
      r1
      \time 3/8 r4.
    }
  }
} 



% ****************************************************************
% end ly snippet
% ****************************************************************
