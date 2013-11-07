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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/tie-whole.ly"
\sourcefileline 0
\header {

  texidoc = "For whole notes, the inside ties do not cross the center
  of the note head, horizontally. "

  
  }
\version "2.12.0"

\paper { ragged-right =  ##t }
\relative
{
  <f d a>1~
  <f d a>1~
  <f d a>1~
}



% ****************************************************************
% end ly snippet
% ****************************************************************
