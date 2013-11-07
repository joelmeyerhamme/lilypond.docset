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
\sourcefilename "dodecaphonic-style-accidentals-for-each-note-including-naturals.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "pitches"

  doctitlees = "Alteraciones de estilo dodecafónico para todas las notas, incluidas las naturales"
  texidoces = "
En las obras de principios del s.XX, empezando por Schoenberg, Berg y
Webern (la \"Segunda\" escuela de Viena), cada nota de la escala de
doce tonos se debe tratar con igualdad, sin ninguna jerarquía como los
grados clásicos tonales.  Por tanto, estos compositores imprimen una
alteración accidental para cada nota, incluso en las notas naturales,
para enfatizar su nuevo enfoque de la teoría y el lenguaje musicales.

Este fragmento de código muestra cómo conseguir dichas reglas de
notación.

"

 texidocde = "
 In Werken des fürhen 20. Jahrhundert, angefangen mit Schönberg, Berg
 und Webern (die zweite Wiener Schule), wird jeder Ton der 
 Zwölftonleiter als gleichwertig erachtet, ohne hierarchische
 Ordnung.  Deshalb wird in dieser Musik für jede Note ein Versetzungszeichen
 ausgegeben, auch für unalterierte Tonhöhen, um das neue Verständnis
 der Musiktheorie und Musiksprache zu verdeutlichen.
 
 Dieser Schnipsel zeigt, wie derartige Notationsregeln zu erstellen sind.
 "
 
doctitlede = "Versetzungszeichen für jede Note im Stil der Zwölftonmusik"

  texidoc = "
In early 20th century works, starting with Schoenberg, Berg and Webern
(the \"Second\" Viennese school), every pitch in the twelve-tone scale
has to be regarded as equal, without any hierarchy such as the
classical (tonal) degrees. Therefore, these composers print one
accidental for each note, even at natural pitches, to emphasize their
new approach to music theory and language.

This snippet shows how to achieve such notation rules. 

"
  doctitle = "Dodecaphonic-style accidentals for each note including naturals"
} % begin verbatim

\score {
  \new Staff {
    #(set-accidental-style 'dodecaphonic)
    c'4 dis' cis' cis'
    c'4 dis' cis' cis'
    c'4 c' dis' des'
  }
  \layout {
    \context {
      \Staff
      \remove "Key_engraver"
    }
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************