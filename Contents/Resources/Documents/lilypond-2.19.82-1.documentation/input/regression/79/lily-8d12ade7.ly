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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/part-combine-force-mmrest-position.ly"
\sourcefileline 0

\header {
  texidoc ="If the part-combiner shows two separate voices, multi-measure rests
  are supposed to use the same settings as @code{\\voiceOnce} and @code{\\voiceTwo}.
"
}

\layout { ragged-right = ##t }

\version "2.19.21"

mI = \relative c'' {
  \partcombineApart
  c2 c |
  R1 |
  c1
}
mII = \relative {
  R1 |
  c'2 c |
  c1
}

\score {
  \new Staff \partcombine \mI \mII
}



% ****************************************************************
% end ly snippet
% ****************************************************************