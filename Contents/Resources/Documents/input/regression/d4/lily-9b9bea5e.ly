%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/grace.ly"
\sourcefileline 0

\version "2.12.0"

\header{

  texidoc=" You can have beams, notes, chords, stems etc. within a
@code{\grace} section.  If there are tuplets, the grace notes will not
be under the brace.  

Main note scripts do not end up on the grace note. 

"
}

\layout {ragged-right = ##t}

\new Voice \relative c'' {
  \grace b8 c4\fermata
  \grace {  c32[ cis32] } gis4
  \grace {  cis32[ dis32] } e4
  \grace {  c32[ d] }\times 2/3 {  c8[ c c] }
  \grace {  b32[ ( c32] }   c4)
  \grace  <c d>16  c8[ c8]
				%	\grace  c16  c8[ c8]
  %% broken?
  %%\grace  { \set Grace.graceAlignPosition = \right c16} c4
  c4 \grace  { c16 } c4
}





% ****************************************************************
% end ly snippet
% ****************************************************************
