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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/part-combine-cross.ly"
\sourcefileline 0

\header {
    texidoc ="The part combiner stays apart for crossing voices.
"
    }

\version "2.12.0"

vone =  \relative a' { g4 g f f e e d d }
vtwo =  \relative a' { e4 e f f g g a a }
\layout { ragged-right = ##t } 

\partcombine \vone \vtwo
 



% ****************************************************************
% end ly snippet
% ****************************************************************