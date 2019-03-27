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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/beam-subdivide-trailing-stem.ly"
\sourcefileline 0
\version "2.19.34"

\header {

  doctitle = "Beam subdivide over quarter notes"

  texidoc = "If in a subdivided beam one single stem follows a subdivision
the beam count should reflect the beam count of the subdivision as usual.
That is, the beam count should not be increased according to the remaining
length of the beam. The appended single stem has beamlets to the left."

}

\relative c' {
  \time 1/4
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/16)
  c32 [ c c c c32 ] r16.
  c32 [ c c c c64 ] r32. r16
  c32 [ c c32 ] r32 r8
  c32 [ c c64 ] r32. r8
}


% ****************************************************************
% end ly snippet
% ****************************************************************