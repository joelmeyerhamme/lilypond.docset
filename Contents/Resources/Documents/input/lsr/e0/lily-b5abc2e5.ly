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
\sourcefilename "compound-time-signatures.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "rhythms"

 doctitlees = "Indicaciones de compases compuestos"
 texidoces = "
Las indicaciones de compás poco frecuentes como \"5/8\" se pueden
ejecutar como compases compuestos (p.ej. \"3/8 + 2/8\"), que combinan
dos o más metros diferentes. LilyPond puede hacer la música de este
tipo fácil de leer e interpretar, imprimiendo explícitamente las
indicaciones de compás compuesto y adaptando el comportamiento
automático de las barras (también se pueden añadir indicaciones
gráficas de la agrupación de compases; véase el fragmento de código
apropiado en la base de datos).

"

%% Translation of GIT committish :<6ce7f350682dfa99af97929be1dec6b9f1cbc01a>
texidocde = "
Ungerade Taktarten werden (wie etwa \"5/8\") werden oft als zusammengesetzte
Taktarten interpretiert (bspw. \"3/8 + 2/8\"), in welchen zwei oder mehr
Teiltakte unterschieden werden.  LilyPond kann derartige Noten produzieren,
indem entsprechende Taktarten gesetzt werden und die automatische
Bebalkung angepasst wird.

"
  doctitlede = "Zusammengesetzte Taktarten"

  texidoc = "
Odd 20th century time signatures (such as \"5/8\") can often be played
as compound time signatures (e.g. \"3/8 + 2/8\"), which combine two or
more inequal metrics. LilyPond can make such music quite easy to read
and play, by explicitly printing the compound time signatures and
adapting the automatic beaming behavior. (Graphic measure grouping
indications can also be added; see the appropriate snippet in this
database.) 

"
  doctitle = "Compound time signatures"
} % begin verbatim

#(define ((compound-time one two num) grob)
  (grob-interpret-markup grob
    (markup #:override '(baseline-skip . 0) #:number
      (#:line (
          (#:column (one num))
          #:vcenter "+"
          (#:column (two num)))))))

\relative c' {
  \override Staff.TimeSignature #'stencil = #(compound-time "2" "3" "8")
  \time 5/8
  #(override-auto-beam-setting '(end 1 8 5 8) 1 4)
  c8 d e fis gis
  c8 fis, gis e d
  c8 d e4 gis8
}



% ****************************************************************
% end ly snippet
% ****************************************************************
