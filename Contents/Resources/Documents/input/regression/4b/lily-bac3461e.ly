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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/tie-arpeggio-collision.ly"
\sourcefileline 0

\header {

  texidoc = "Advanced tie chord formatting also works with arpegiated
ties.  Due to arpeggios, tie directions may be changed relative to the
unarpegiated case."

  
}

\version "2.12.0"


\layout { ragged-right = ##t }
\new Staff \relative c'' {
  <e c a f>2~ <e c a f> |
  \set tieWaitForNote = ##t
  e8~ c~ a~ f~ <e' c a f>2 |
  f,8~ a~ c~ e~ <f, a c e>2 |
}




% ****************************************************************
% end ly snippet
% ****************************************************************
