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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/full-measure-rest-fermata.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc="
Fermata over full-measure rests should invert when below and
be closer to the staff than other articulations."
}
\layout {
  ragged-right = ##t
}
\relative {
  R1
  a'1^"should be lower"
  R1^"should be higher"
  \break
  R1
  R1^"should be lower"
  a1^"should be higher"
  \break
  a1^"should be above fermata"
  R1^\fermataMarkup
  \break
  a1_"should be below fermata"
  R1_\fermataMarkup
}



% ****************************************************************
% end ly snippet
% ****************************************************************
