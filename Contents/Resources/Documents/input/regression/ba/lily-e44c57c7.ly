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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/beam-subdivide-shortened-beam.ly"
\sourcefileline 0
\version "2.19.34"

\header {

  doctitle = "Beam subdivide with incomplete remainder"

  texidoc = "Beam count at subdivisions should match the count corresponding
to the location of the current subdivision.  However, if the remainder of the
beam is shorter than that the beam count should be adopted accordingly."

}

\paper {
  indent = 0
}

\relative c'' {
  \omit Staff.TimeSignature
  \time 1/4
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/32)
  c64 ^\markup "Full beam (1/32 division)" [ c c c  c c c c  c c c c  c c c c ]
  c64 ^\markup "Shortened by 1/32" [ c c c  c c c c  c c c c  c c ] r32
  c64 ^\markup "Shortened by 3/32" [ c c c  c c c c  c c  ] r16.
  \set baseMoment = #(ly:make-moment 1/16)
  c32 ^\markup "Full beam (1/16 division)" [ c c c c c c c ]
  c32 ^\markup "Shortened by 1/16" [ c c c c c] r16
}



% ****************************************************************
% end ly snippet
% ****************************************************************