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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/page-spacing-nonstaff-lines-unrelated.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc = "Non-staff lines (such as @code{Lyrics}) can specify
their @code{padding} or @code{minimum-distance} to the staff for
which they don't have affinity."
}

<<
  \new Staff { c'1 }
  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #'20
  } \lyricmode { foo }
  \new Staff { c'1 }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************