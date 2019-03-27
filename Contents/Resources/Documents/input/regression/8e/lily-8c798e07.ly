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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/rest.ly"
\sourcefileline 0
\version "2.16.0"

\header{
  texidoc="
There is a big variety of rests.  Note that the dot of 8th, 16th and 32nd 
rests rest should be next to the top of the rest.  All rests except the 
whole rest are centered on the middle staff line.
"
}

\paper { ragged-right = ##t } 

{
  \time 4/4
  r \longa * 1/4  r\breve * 1/2 
  r1 r2 r4 r8 r16 r32 r64 r128 r128
  \time 6/4
  r1. r2. r4. r8. r16. r32. r64. r128. r128.
}




% ****************************************************************
% end ly snippet
% ****************************************************************
