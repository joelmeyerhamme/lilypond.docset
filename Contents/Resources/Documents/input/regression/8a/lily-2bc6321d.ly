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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/flip-stencil.ly"
\sourcefileline 0
\version "2.19.19"

\header {
  texidoc = "Stencils can be flipped horizontally or vertically within
their bounding box using @code{flip-stencil}."
}

square =
#(make-path-stencil
  '(moveto 0 0 lineto 0 2 lineto 2 2 lineto 2 0 closepath)
  0.1 1 1 #f)

triangle =
#(stencil-with-color
  (make-path-stencil
   '(moveto 0 0 lineto 2 2 lineto 2 0 closepath)
   0.3 1 1 #f)
  blue)

{
  g'1^\markup \stencil
  #(ly:stencil-add square triangle)
  _\markup \teeny "baseline"

  g'1^\markup \stencil
  #(ly:stencil-add square (flip-stencil X triangle))
  _\markup \teeny "flip X"

  g'1^\markup \stencil
  #(ly:stencil-add square (flip-stencil Y triangle))
  _\markup \teeny "flip Y"
}



% ****************************************************************
% end ly snippet
% ****************************************************************
