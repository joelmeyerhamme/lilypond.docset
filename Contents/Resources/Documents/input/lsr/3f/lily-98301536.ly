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
\sourcefilename "suppressing-warnings-for-clashing-note-columns.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "simultaneous-notes, tweaks-and-overrides"

  texidoc = "
If notes from two voices with stems in the same direction are placed at
the same position, and both voices have no shift or the same shift
specified, the error message \"warning: ignoring too many clashing note
columns\" will appear when compiling the LilyPond file.  This message
can be suppressed by setting the @code{'ignore-collision} property of
the @code{NoteColumn} object to @code{#t}.

"
  doctitle = "Suppressing warnings for clashing note columns"
} % begin verbatim

ignore = \override NoteColumn #'ignore-collision = ##t

\relative c' {
  <<
    \ignore
    { \stemDown f2 g }
    \\
    { c2 c, }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
