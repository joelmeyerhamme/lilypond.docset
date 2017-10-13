%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,doctitle,alt=[image of music],texidoc,line-width=160\mm]
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
\sourcefilename "modifying-tuplet-bracket-length.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "rhythms"

  texidoc = "
Tuplet brackets can be made to run to prefatory matter or the next
note. Default tuplet brackets end at the right edge of the final note
of the tuplet; full-length tuplet brackets extend farther to the right,
either to cover all the non-rhythmic notation up to the following note,
or to cover only the whitespace before the next item of notation, be
that a clef, time signature, key signature, or another note.  The
example shows how to switch tuplets to full length mode and how to
modify what material they cover.

"
  doctitle = "Modifying tuplet bracket length"
} % begin verbatim

\new RhythmicStaff {
  % Set tuplets to be extendable...
  \set tupletFullLength = ##t
  % ...to cover all items up to the next note
  \set tupletFullLengthNote = ##t
  \time 2/4
  \times 2/3 { c4 c c }
  % ...or to cover just whitespace
  \set tupletFullLengthNote = ##f
  \time 4/4
  \times 4/5 { c4 c1 }
  \time 3/4
  c2.
}




% ****************************************************************
% end ly snippet
% ****************************************************************