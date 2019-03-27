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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/add-stem-support.ly"
\sourcefileline 0
\version "2.19.12"

\header {
  texidoc = "@code{add-stem-support} can be removed or implemented
only for beamed notes.
"
}

music = {
  \clef bass
  \stemUp
  <g^3 a^5>2..->
  r16 eeses'16
  \set fingeringOrientations = #'(right)
  <c e>8-1-4 <c^1 e^4> <g,-3 b,-4> r
  r2
}

{
  \music
  \override Fingering.add-stem-support = ##f
  \music
  \override Fingering.add-stem-support = #only-if-beamed
  \music
}


% ****************************************************************
% end ly snippet
% ****************************************************************
