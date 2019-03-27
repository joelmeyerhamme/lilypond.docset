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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/page-spacing-tall-headfoot.ly"
\sourcefileline 0
\version "2.16.0"

#(set-default-paper-size "a6")

\book {
  \header {
    texidoc = "Both the page breaking and the page layout take account of
the heights of the header and footer."
  }
  \paper {
    oddHeaderMarkup = \markup { \fill-line { \column { t a l l h e a d e r } } } 
    oddFooterMarkup = \markup { \fill-line { \column { t a l l f o o t e r } } }
    evenFooterMarkup = \markup { \fill-line { "small footer" } }
  }

  \repeat unfold 10 { c'1 \break }
}





% ****************************************************************
% end ly snippet
% ****************************************************************
