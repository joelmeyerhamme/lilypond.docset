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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/midi-grace.ly"
\sourcefileline 0

\header {

  texidoc = "Grace notes don't intrroduce syncing problems: the last note
off will appear at tick 768 (2 * 384)."
  
}
\version "2.12.0"
\score {
 \relative c' {
   c4
   \grace { b8 }
   d4
 }
 \midi { }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
