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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/beam-single-stem.ly"
\sourcefileline 0
\header {

  texidoc = "Single stem beams are also allowed. For such beams,
  clip-edges is switched off automatically."

}
\version "2.12.0"

\relative c' {
  d16[]
  \set stemRightBeamCount = #0
  d32[]
}

\layout {
  ragged-right = ##t
}



% ****************************************************************
% end ly snippet
% ****************************************************************
