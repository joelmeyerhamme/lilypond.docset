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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/time-signature-numbered.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "The numbered time signature style prints a fraction."
}

\new Staff {
  \relative {
    \override Staff.TimeSignature.style = #'numbered
    \time 4/4 d'1
    \time 3/4 d2.
    \time 2/2 d1
    \time 16/128 d8
    #(ly:expect-warning "strange time signature found: 10/6")
    \time 10/6 \tuplet 6/4 { d2. d2 d2. d2 }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
