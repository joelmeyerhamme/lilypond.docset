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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/minimum-length-end-line.ly"
\sourcefileline 0
\version "2.17.16"

\header {
  texidoc = "Long spanners at the end of the lines stretch measures
correctly.
"
}

{
  \override Hairpin.minimum-length = #60
  \override Hairpin.to-barline = ##t
  \repeat unfold 4 a1
  a1\<
  a1\>
  a1\!
}



% ****************************************************************
% end ly snippet
% ****************************************************************