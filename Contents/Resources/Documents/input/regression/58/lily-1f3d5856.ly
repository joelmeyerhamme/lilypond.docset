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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/grace-part-combine.ly"
\sourcefileline 0

\version "2.12.0"
\header {
  texidoc = "Grace notes may be put in a @code{partcombine}r."
}

\layout { ragged-right= ##t }


\new Staff
\partcombine 
\relative c'' {
  c4 d e f  \grace f16 g1
}
\relative c' {
  c4 d e2  g1
}







% ****************************************************************
% end ly snippet
% ****************************************************************
