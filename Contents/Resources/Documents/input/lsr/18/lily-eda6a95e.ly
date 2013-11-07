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
\sourcefilename "combining-two-parts-on-the-same-staff.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "simultaneous-notes, text"

  texidoces = "
La herramienta de combinación de partes ( instrucción
@code{\\partcombine}) permite la combinación de varias partes
diferentes sobre el mismo pentagrama.  Las indicaciones textuales
tales como \"solo\" o \"a2\" se añaden de forma predeterminada;
para quitarlas, sencillamente establezca la propiedad
@code{printPartCombineTexts} al valor \"falso\".  Para partituras
vocales (como himnos), no hay necesidad de añadir los textos
\"solo\" o \"a2\", por lo que se deben desactivar.  Sin embargo,
podría ser mejor no usarlo si hay solos, porque éstos no se
indicarán.  En tales casos podría ser preferible la notación
polifónica estándar.

Este fragmento de código presenta las tres formas en que se pueden
imprimir dos partes sobre un solo pentagrama: polifonía estándar,
@code{\\partcombine} sin textos, y @code{\\partcombine} con
textos.

"
  doctitlees = "Combinar dos partes sobre el mismo pentagrama"

  texidoc = "
The part combiner tool ( @code{\\partcombine} command ) allows the
combination of several different parts on the same staff.  Text
directions such as \"solo\" or \"a2\" are added by default; to remove
them, simply set the property @code{printPartCombineTexts} to
\"false\". For vocal scores (hymns), there is no need to add
\"solo\"/\"a2\" texts, so they should be switched off.  However, it
might be better not to use it if there are any solos, as they won't be
indicated.  In such cases, standard polyphonic notation may be
preferable.

This snippet presents the three ways two parts can be printed on a same
staff: standard polyphony, @code{\\partcombine} without texts, and
@code{\\partcombine} with texts.




"
  doctitle = "Combining two parts on the same staff"
} % begin verbatim

musicUp = \relative c'' {
  \time 4/4
  a4 c4.( g8) a4 |
  g4 e' g,( a8 b) |
  c b a2.
}

musicDown = \relative c'' {
  g4 e4.( d8) c4 |
  r2 g'4( f8 e) |
  d2 \stemDown a
}

\score {
  <<
    <<
    \new Staff {
      \set Staff.instrumentName = "Standard polyphony  "
      << \musicUp \\ \musicDown >>
    }
    \new Staff \with { printPartCombineTexts = ##f } {
      \set Staff.instrumentName = "PartCombine without texts  "
      \partcombine \musicUp \musicDown
    }
    \new Staff {
      \set Staff.instrumentName = "PartCombine with texts  "
      \partcombine \musicUp \musicDown
    }
    >>
  >>
  \layout {
    indent = 6.0\cm
    \context {
      \Score
      \override SystemStartBar #'collapse-height = #30
    }
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************
