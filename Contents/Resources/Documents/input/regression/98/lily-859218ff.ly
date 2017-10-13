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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/dot-flag-collision.ly"
\sourcefileline 0

\version "2.12.0"
\header {
  texidoc = "Dots move to the right when a collision with the (up)flag happens."
}
\layout { ragged-right = ##t}


\relative c''
{
  \time 8/4
  \set Staff.autoBeaming = ##f
  a,16.
  g''16.
  a,4. a8 a8. a16. c,16. g16.
}






% ****************************************************************
% end ly snippet
% ****************************************************************