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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/spacing-stem-direction.ly"
\sourcefileline 0

\version "2.19.21"

\header{

  texidoc="

There are optical corrections to the spacing of stems. The overlap between 
two adjacent stems of different direction is used as a measure for how
much to correct."

}

\layout {
  ragged-right = ##t
}


\context Voice \relative {
  \override Score.PaperColumn.layer = #1
  \override Score.PaperColumn.stencil = #ly:paper-column::print

  %% make sure neutral is down.
  \override Stem.neutral-direction = #down
  \time 16/4  c''4 c c,  c' d, c' e, c' f, c' g c a c b c
}

  





% ****************************************************************
% end ly snippet
% ****************************************************************