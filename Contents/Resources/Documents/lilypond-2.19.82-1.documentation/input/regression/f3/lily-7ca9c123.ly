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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/arpeggio-no-overshoot.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Arpeggios do not overshoot the highest note head.
The first chord in this example simulates overshoot using
@code{'positions} for comparison with the correct behaviour."
}

\relative {
  % simulate overshoot for comparison
  \once \override Arpeggio.positions = #'(-3 . 1)
  <c' e g b>1\arpeggio
  <c e g b>1\arpeggio
  <f a c>2\arpeggio <g b d f>\arpeggio
}



% ****************************************************************
% end ly snippet
% ****************************************************************