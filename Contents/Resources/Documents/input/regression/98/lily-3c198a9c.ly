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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/beam-beamlet-break.ly"
\sourcefileline 0
\header {
  texidoc = "beamlets don't run to end of line if there are no other
  beamlets on the same height."
  
}
\version "2.12.0"

\paper {
  raggedright = ##t
}

\relative {
  \time 1/4
  \override Beam #'breakable = ##t
  r16 r16. c32[ c16 \break c8. ] r16
}



% ****************************************************************
% end ly snippet
% ****************************************************************