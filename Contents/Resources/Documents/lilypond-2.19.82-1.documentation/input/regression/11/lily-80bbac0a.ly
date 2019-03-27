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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/time-signature-single-digit.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "The single-digit time signature style prints the numerator only."
}

\new Staff {
  \relative {
    \override Staff.TimeSignature.style = #'single-digit
    \time 1/2 d'2
    \time 2/4 d4 d
    \time 3/4 d2.
    \time 16/4 d\longa
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
