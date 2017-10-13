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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/stem-direction-context.ly"
\sourcefileline 0
\header {

  texidoc = "Stem directions for notes on the middle staff line are
  determined by the directions of their neighbors."

}

\version "2.19.21"
\relative \new Voice \with {
     \consists "Melody_engraver"
     \override Stem.neutral-direction = #'()
} {
  c''4 b c b
  c c c c
  b a b a
} 
  
  



% ****************************************************************
% end ly snippet
% ****************************************************************
