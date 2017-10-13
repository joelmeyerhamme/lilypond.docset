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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/property-nested-override.ly"
\sourcefileline 0
\version "2.19.21"
\header {
  texidoc = "Nested properties may be overridden using Scheme list
syntax.  This test performs two property overrides: the first
measure uses standard @code{\\override} syntax; the second uses a
list.
"
}

\relative {
  \once \override TextSpanner.bound-details.left.text = #"foo"
  c'4\startTextSpan
  \once \override Tie.details.note-head-gap = #1
  c4 ~ 4 c\stopTextSpan
  
  \once \override TextSpanner.bound-details.left.text = #"foo"
  c4\startTextSpan
  \once \override Tie.details.note-head-gap = #1
  c4 ~ 4 c\stopTextSpan
}



% ****************************************************************
% end ly snippet
% ****************************************************************
