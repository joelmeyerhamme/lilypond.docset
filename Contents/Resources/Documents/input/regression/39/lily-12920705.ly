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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/beam-beamlet-break.ly"
\sourcefileline 0
\header {
  texidoc = "beamlets don't run to end of line if there are no other
  beamlets on the same height."

}
\version "2.19.21"

\paper {
  raggedright = ##t
}

\relative {
  \time 1/4
  \override Beam.breakable = ##t
  r16 r16. c'32[ c16 \break c8. ] r16
}



% ****************************************************************
% end ly snippet
% ****************************************************************
