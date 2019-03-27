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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/spacing-bar-arpeggio.ly"
\sourcefileline 0
\header{
  texidoc = "An arpeggio following a bar gets space"

}

\version "2.17.6"

\layout{ragged-right=##t}
\new Staff {

  \override Score.NonMusicalPaperColumn.stencil = #ly:paper-column::print
  \override Score.NonMusicalPaperColumn.layer = #1
  
  s1
  <b' c'' c'>2\arpeggio
}



% ****************************************************************
% end ly snippet
% ****************************************************************
