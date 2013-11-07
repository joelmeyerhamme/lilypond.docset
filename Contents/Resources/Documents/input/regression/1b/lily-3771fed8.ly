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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/beaming.ly"
\sourcefileline 0

\version "2.12.0"

\header{
texidoc="
Beaming is generated automatically. Beams may cross bar lines. In that
case, line breaks are forbidden.
"
}

\context Staff  \relative c''  {

  c8[ \times 2/3 { c16 d e] }
  s4*3
  
  c8.[ c16]
  c8.[ c16 c8.  c16]
  c16[ c8.] |
  c8.[ c16  c16  c8.]
  c8.[ c32  c32]
  c8[ c8] |
  c16[ c16]
  c32[ c32]
  c64[ c64]	
  c32
  c2

  c8[^"over barline" c c] c8 
  c16[ c8 c16]
  c32[ c16 c16 c16 c32]
  c32[ c16 c8 c32]		 % hmm ?
  
}




% ****************************************************************
% end ly snippet
% ****************************************************************
