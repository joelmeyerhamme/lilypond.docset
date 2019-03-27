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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/fingering-column.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Horizontal @code{Fingering} grobs that collide do not intersect.
Non-intersecting @code{Fingering} grobs are left alone. This is managed
by the @code{FingeringColumn} grob.
"
}

\relative {
   \set fingeringOrientations = #'(left)
   \override Fingering.staff-padding = #'()
   \override Fingering.add-stem-support = ##f
   <d''-0 c-3 f,-0>4 <d-0 f,-3 e-0>
   <d^0 c^3 f,-0> <d^0 f,-0> <c^3 f,-0>
   <d-0 c-0 b-0 a-0 g-0 f-0>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
