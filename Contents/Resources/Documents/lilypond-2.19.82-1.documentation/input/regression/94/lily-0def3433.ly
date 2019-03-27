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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/beam-damp.ly"
\sourcefileline 0

\version "2.16.0"
\header { texidoc = "@cindex Beam Damp
Beams are less steep than the notes they encompass. " }
\layout{
  ragged-right = ##t
}

\relative c''{
  %%		\stemUp
  %%		 a16[ b b c]
  %%		 c[ b b a]
  %%		\stemDown
  %%		 c[ b b a]
  %%		 a[ b b c]
  \stemUp
  g16[ a b c]
  c[ b a g]
  \stemDown
  d'[ c b a]
  a[ b c d]
}





% ****************************************************************
% end ly snippet
% ****************************************************************
