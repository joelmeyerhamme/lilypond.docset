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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/beam-auto-knee.ly"
\sourcefileline 0

\version "2.16.0"

\header
{
  texidoc="A knee is made automatically when a horizontal
beam fits in a gap between note heads that is larger than a predefined
threshold.
"
}
\layout{ ragged-right = ##t }

\context Staff \relative c''{ 
  c'8[ c,,]  c8[ e']
  c,16[ e g c e g c c,,] 
}



% ****************************************************************
% end ly snippet
% ****************************************************************
