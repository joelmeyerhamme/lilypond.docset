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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/stem-shorten.ly"
\sourcefileline 0

\version "2.19.21"

\header {
  
  texidoc = "If note head is `over' the center line, the stem is
 shortened.  This happens with forced stem directions, and with some
 chord configurations."

}

\layout  {
  ragged-right = ##t
}


\relative {
  \stemDown d'' c b a g f e
  \stemNeutral
  \stemUp a b c d e f g a
  \stemNeutral
  s4 |
  
  <g, e'>2 <b e g> <c e g> <d f g>
  
} 





% ****************************************************************
% end ly snippet
% ****************************************************************