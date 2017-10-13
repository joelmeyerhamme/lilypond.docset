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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/hairpin-barline-break.ly"
\sourcefileline 0
\header {

  texidoc = "If a hairpin ends on the first note of a new stave, we
do not print that ending.  But on the previous line, this hairpin
should not be left open, and should end at the bar line. "
}

\version "2.12.0"

\relative c' {
  c1\>
  \break
  c1\!
}



% ****************************************************************
% end ly snippet
% ****************************************************************