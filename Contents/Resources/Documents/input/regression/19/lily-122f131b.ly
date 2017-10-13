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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/beam-subdivide-quarter-notes.ly"
\sourcefileline 0
\version "2.19.32"

\header {

  doctitle = "Beam subdivide over quarter notes"

  texidoc = "Beam count at subdivisions should match the location
of the current subdivision.  However, if the groups are equal or
longer than quarter notes, one beam should always be left."

}

\relative c' {
    \set baseMoment = #(ly:make-moment 1/4)
    \set subdivideBeams = ##t
    c16 [ c c c c c c c c c c c c c c c ]
}



% ****************************************************************
% end ly snippet
% ****************************************************************
