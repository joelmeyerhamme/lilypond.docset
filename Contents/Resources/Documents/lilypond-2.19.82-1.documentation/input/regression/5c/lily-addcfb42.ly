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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/music-function-incomplete.ly"
\sourcefileline 0
\version "2.19.24"

\header {
  texidoc = "For defining a music function, one can supply one or
  several music function calls chained together,  cutting the last
  call short using @code{\\etc}.  The remaining arguments are
  supplied when calling the music function defined in this manner."
}

\layout { ragged-right = ##t }

highlight = \tweak font-size 3 \tweak color #red \etc
mode = \key c \etc

{ c' \highlight d' e'-\highlight -! \mode \minor c'' }



% ****************************************************************
% end ly snippet
% ****************************************************************
