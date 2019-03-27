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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/grace.ly"
\sourcefileline 0

\version "2.17.28"

\header{

  texidoc=" You can have beams, notes, chords, stems etc. within a
@code{\\grace} section.  If there are tuplets, the grace notes will not
be under the brace.  

Main note scripts do not end up on the grace note. 

"
}

\layout {ragged-right = ##t}

\new Voice \relative c'' {
  \grace b8 c4\fermata
  \grace {  c32 cis32 } gis4
  \grace {  cis32 dis32 } e4
  \grace {  c32 d }\tuplet 3/2 {  c8[ c c] }
  \grace {  b32 ( c32 }   c4)
  \grace  <c d>16  c8[ c8]
				%	\grace  c16  c8[ c8]
  %% broken?
  %%\grace  { \set Grace.graceAlignPosition = \right c16} c4
  c4 \grace  { c16 } c4
}





% ****************************************************************
% end ly snippet
% ****************************************************************
