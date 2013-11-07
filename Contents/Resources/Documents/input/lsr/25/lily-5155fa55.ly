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
\sourcefilename "preventing-extra-naturals-from-being-automatically-added.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "pitches"

  texidocfr = "
En accord avec les règles standards de l'écriture musicale, on grave
un bécarre avant un dièse ou un bémol si on a besoin d'annuler une
altération précédente.  Pour modifier ce comportement, assignez la propriété
@code{extraNatural} du contexte @code{Staff} à la valeur @code{##f} (faux).
"
doctitlees = "Evitar que se añadan becuadros adicionales automáticamente"
texidoces = "
Según las reglas estándar de composición tipográfica, se imprime un becuadro
antes de un sostenido o un bemol cuando se tiene que cancelar una alteración anterior
en la misma nota.  Para modificar este comportamiento, establezca el valor de la
propiedad @code{extraNatural}  a @code{##f} (falso) dentro del
contexto de @code{Staff}.

"

doctitlede = "Verhindern, dass zusätzliche Auflösungszeichen automatisch
hinzugefügt werden"

texidocde = "Den tranditionellen Notensatzregeln zufolge wird ein
Auflösungszeichen immer dann vor einem Kreuz oder B gesetzt, wenn
ein vorheriges Versetzungszeichen der gleichen Note aufgehoben werden
soll.  Um dieses Verhalten zu ändern, muss die Eigenschaft
@code{extraNatural} im @code{Staff}-Kontext auf \"false\" gesetzt werden.
"

  texidoc = "
In accordance with standard typesetting rules, a natural sign is
printed before a sharp or flat if a previous accidental on the same
note needs to be canceled.  To change this behavior, set the
@code{extraNatural} property to \"false\" in the @code{Staff} context.



"
  doctitle = "Preventing extra naturals from being automatically added"
} % begin verbatim

\relative c'' {
  aeses4 aes ais a
  \set Staff.extraNatural = ##f
  aeses4 aes ais a
}




% ****************************************************************
% end ly snippet
% ****************************************************************
