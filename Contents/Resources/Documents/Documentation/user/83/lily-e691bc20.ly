%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,lilyquote,doctitle,ragged-right,alt=[image of music],texidoc]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm - 2.0 * 0.4\in
  ragged-right = ##t
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "showing-chords-at-changes.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "chords"

  texidoces = "
Se pueden imprimir los acordes exclusivamente al comienzo de las
líneas y cuando cambia el acorde.

"
  doctitlees = "Imprimir los acordes cuando se produce un cambio"

  texidoc = "
Chord names can be displayed only at the start of lines and when the
chord changes.

"
  doctitle = "Showing chords at changes"
} % begin verbatim

harmonies = \chordmode {
  c1:m c:m \break c:m c:m d
}
<<
  \new ChordNames {
    \set chordChanges = ##t
    \harmonies
  }
  \new Staff {
    \relative c' { \harmonies }
  }
>>




% ****************************************************************
% end ly snippet
% ****************************************************************