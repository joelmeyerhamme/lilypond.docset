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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/trill-spanner-pitched-consecutive.ly"
\sourcefileline 0
\version "2.12.0"

\header {
  texidoc = "Pitched trills on consecutive notes with the same
name and octave should not lose accidentals; in the following
example, accidentals should be visible for all trill-pitches.
"
}

\relative c' {
  \pitchedTrill
  f4\startTrillSpan ges f\stopTrillSpan
  
  \pitchedTrill
  f4\startTrillSpan g gis\stopTrillSpan ~
  
  \pitchedTrill
  gis4\startTrillSpan ges f\stopTrillSpan
  
  \pitchedTrill
  g4\startTrillSpan gis f\stopTrillSpan
  
  \pitchedTrill
  f4\startTrillSpan gisis f\stopTrillSpan
  
  \pitchedTrill
  f4\startTrillSpan geses f\stopTrillSpan
}



% ****************************************************************
% end ly snippet
% ****************************************************************
