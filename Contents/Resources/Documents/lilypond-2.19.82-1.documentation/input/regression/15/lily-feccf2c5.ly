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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/tuplet-number-outside-staff-positioning.ly"
\sourcefileline 0
\version "2.19.21"

\header {

  texidoc = "Grobs whose parents have @code{outside-staff-priority} set
should figure into the vertical skyline of the @code{VerticalAxisGroup}
such that grobs with a higher @code{outside-staff-priority} are correctly
positioned above them.
"

}

\relative {
   \override TupletBracket.outside-staff-priority = #1
   \override TupletNumber.font-size = #5
   \tuplet 3/2 { a'4\trill a\trill^"foo" a\trill }
}


% ****************************************************************
% end ly snippet
% ****************************************************************