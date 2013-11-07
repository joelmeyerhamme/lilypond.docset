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
\sourcefilename "printing-marks-at-the-end-of-a-line-or-a-score.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "text"

  texidoces = "
Las marcas se pueden imprimir al final de la línea actual, en vez de
al comienzo de la línea siguiente.  Esto es útil principalmente cuando
se tiene que añadir una marca al final de la partitura (donde no hay
línea siguiente).

En tales casos, el extremo derecho de la marca se tiene que alinear
con la última línea divisoria, como muestra la segunda línea de este
ejemplo.

"
  doctitlees = "Imprimir marcas al final de la línea o de la partitura"

  texidoc = "
Marks can be printed at the end of the current line, instead of the
beginning of the following line. This is particularly useful when a
mark has to be added at the end of a score -- when there is no next
line.

In such cases, the right end of the mark has to be aligned with the
final bar line, as demonstrated on the second line of this example. 

"
  doctitle = "Printing marks at the end of a line or a score"
} % begin verbatim

\relative c'' {  
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  g2 c
  d,2 a'
  \mark \default
  \break
  g2 b,
  c1 \bar "||"
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT  
  \mark "D.C. al Fine"
}




% ****************************************************************
% end ly snippet
% ****************************************************************
