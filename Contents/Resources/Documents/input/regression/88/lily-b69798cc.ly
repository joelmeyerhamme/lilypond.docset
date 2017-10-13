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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/beaming-ternary-metrum.ly"
\sourcefileline 0

\version "2.12.0"

\header {

  texidoc = "Automatic beaming works also in ternary time sigs. In
  this case, the 8th is a beat, so the 16ths are split into two
  groups.  This can be avoided by overriding @code{beatLength} to be
  three 8th notes."

}

\layout { ragged-right = ##t}

\relative c'' {
  \time 6/8
  c8.[ c16 c16 c16] 
  \set beatLength = #(ly:make-moment 3 8)
  c8.[ c16 c16 c16] 
}




% ****************************************************************
% end ly snippet
% ****************************************************************