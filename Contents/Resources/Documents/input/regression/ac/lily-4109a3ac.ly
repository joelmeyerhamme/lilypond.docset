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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/multi-measure-rest-spacing.ly"
\sourcefileline 0
\header {

  texidoc = "By setting texts starting with a multi-measure rest, an 
extra spacing column is created. This should not cause problems."
}

  \layout {
    ragged-right = ##t
  }

\version "2.12.0"


<<
  \set Score.skipBars = ##t
  \new Staff \new Voice { 
    <<  { R1*40 }  { s1*0_"bla" }>> 
  }
>>

 



% ****************************************************************
% end ly snippet
% ****************************************************************