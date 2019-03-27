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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/multi-measure-rest-standard.ly"
\sourcefileline 0
\header {
  texidoc = "Only whole, breve, longa and maxima rests are used by default for multi-measure rests."
}

\version "2.16.0"

\paper {
  ragged-right = ##t
  indent = 0
}

\new Staff {
  \time 3/8 R4.
  \time 2/4 R2
  \time 2/2 R1
  \time 2/1 R\breve
  \break
  \time 4/1 R\longa
  \time 8/1 R\maxima
}



% ****************************************************************
% end ly snippet
% ****************************************************************
