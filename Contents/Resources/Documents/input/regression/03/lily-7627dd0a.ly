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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/part-combine-mmrest-after-solo.ly"
\sourcefileline 0

\header { texidoc = " Multimeasure rests are printed after solos, both
    for solo1 and for solo2."  }
\version "2.12.0"

\layout { ragged-right = ##t }
\new Staff 
\partcombine
\relative c''{ R1*2 | c4 r2.  | c2 r  | R1 }
\relative c' {  c2 r | R1 | c4 r2. | R1*2  }



% ****************************************************************
% end ly snippet
% ****************************************************************
