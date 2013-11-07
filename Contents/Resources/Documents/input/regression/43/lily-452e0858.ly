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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/beam-rest.ly"
\sourcefileline 0

\header {
  texidoc = "The number of beams does not change on a rest."
}

\version "2.12.0"

\layout { ragged-right = ##t }

\relative c, {
  \clef bass	 
  e8[ r16 f d'8 e16 e16]  c8[ c16 r16 bes8 r16 c16] |
}



% ****************************************************************
% end ly snippet
% ****************************************************************