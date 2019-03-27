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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/page-spacing-bass-figures.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc = "@var{alignment-distances} applies to the toplevel
VerticalAlignment but not to BassFigureAlignment.  The 4 in
the bass figure line should be directly below the 6."
}

\score {
 <<
   \new Staff {
     \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'((alignment-distances . (15)))
     c'4
   }
   \new Staff <<
     { d'4 }
     \figures { <6 4>4 } >> >>
 }



% ****************************************************************
% end ly snippet
% ****************************************************************
