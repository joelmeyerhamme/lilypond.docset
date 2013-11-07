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
\sourcefilename "volta-below-chords.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "repeats, staff-notation, chords"

  texidoces = "
Mediante la adición del grabador @code{Volta_engraver} al
pentagrama pertinente, se pueden poner los corchetes de primera y
segunda vez debajo de los acordes.

"
  doctitlees = "Corchetes de primera y segunda vez debajo de los acordes"

  texidoc = "
By adding the @code{Volta_engraver} to the relevant staff, volte can be
put under chords.

"
  doctitle = "Volta below chords"
} % begin verbatim

\score {
  <<
    \chords {
      c1
      c1
    }
    \new Staff \with {
      \consists "Volta_engraver"
    }
    {
      \repeat volta 2 { c'1 }
      \alternative { c' }
    }
  >>
  \layout {
    \context {
      \Score
      \remove "Volta_engraver"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
