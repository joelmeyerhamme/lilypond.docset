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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/finger-chords-accidental.ly"
\sourcefileline 0
\version "2.16.0"
\header
{
  texidoc = "Scripts left of a chord avoid accidentals."
}

\paper {
  ragged-right = ##t
}

{
  r4 
  \set fingeringOrientations = #'(left)
  <cis''-3 >
  <cis''!-3 e''>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
