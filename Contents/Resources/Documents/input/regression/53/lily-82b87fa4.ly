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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/markup-note-dot.ly"
\sourcefileline 0
\version "2.12.0"
\header {

  texidoc = " A dotted whole note displayed via the @code{\\note}
  command must separate the note head and the dot. The dot avoids the upflag."

	}

\relative c' {
  c4^\markup { \note #"1." #1 }
  c4^\markup { \note #"2." #1 }
  c4^\markup { \note #"8." #1 }
}



% ****************************************************************
% end ly snippet
% ****************************************************************