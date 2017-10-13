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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/beam-single-stem.ly"
\sourcefileline 0
\header {

  texidoc = "Single stem beams are also allowed. For such beams,
  clip-edges is switched off automatically."

}
\version "2.19.21"

\relative {
  d'16[]
  \set stemRightBeamCount = #0
  d32[]
}

\layout {
  ragged-right = ##t
}



% ****************************************************************
% end ly snippet
% ****************************************************************
