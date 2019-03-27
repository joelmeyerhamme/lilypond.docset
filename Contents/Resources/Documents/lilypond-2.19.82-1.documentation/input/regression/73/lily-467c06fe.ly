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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/beam-collision-prefatory-matter.ly"
\sourcefileline 0
\header {
  texinfo = "Beams do not collide with clefs, key signatures, time
  signatures"
}

\layout {
  ragged-right = ##t
%  debug-beam-scoring = ##t
}

\version "2.19.21"

\relative {
  \time 2/4
  c'8[ \clef "bass" e,, ]
  r8
  e8[ |
      \time 1/4
    e]
  e[
  e] r8
  \time 4/4

  e[
  \key f \major
  e]
  e[
  \key cis \major
  e]
  
}



% ****************************************************************
% end ly snippet
% ****************************************************************
