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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/script-stack-order.ly"
\sourcefileline 0

\version "2.19.21"
\header {
  texidoc = "Scripts can be stacked. The order is determined by a
priority field, but when objects have the same priority, the input
order determines the order. Objects specified first are closest to the note.
"
}

\layout { ragged-right = ##t}

\relative {
  c''4^"up 1"^"up 2"^"up 3"_"down 1"_"down 2"_"down 3" c c c
  c4^"1"^"2"\turn  c\turn ^"1"^"2" c c
}



% ****************************************************************
% end ly snippet
% ****************************************************************
