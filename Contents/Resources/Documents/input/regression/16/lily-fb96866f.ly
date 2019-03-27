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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/instrument-cue-name.ly"
\sourcefileline 0
\version "2.19.21"

\header {

  texidoc = "The @code{Voice.instrumentCueName} property generates instrument
names for cue notes. It can also be unset properly."
  }


\relative {
  c''4
  \set Voice.instrumentCueName = "In.1"
  c2.
  \set Voice.instrumentCueName = "I.2"
  c1
  \unset Voice.instrumentCueName
  c
}



% ****************************************************************
% end ly snippet
% ****************************************************************
