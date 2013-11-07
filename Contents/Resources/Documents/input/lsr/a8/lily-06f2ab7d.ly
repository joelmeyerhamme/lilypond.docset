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
\sourcefilename "applying-note-head-styles-depending-on-the-step-of-the-scale.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "pitches, editorial-annotations"

  doctitlees = "Aplicar estilos de cabeza según la nota de la escala"
  texidoces = "
La propiedad @code{shapeNoteStyles} se puede usar para definir varios
estilos de cabezas de nota para cada grado de la escala (según esté
establecido por la armadura o por la propiedad \"tonic\").  Esta
propiedad requiere un conjunto de símbolos, que pueden ser puramente
arbitrarios (se permiten expresiones geométricas como @code{triangle},
triángulo, @code{cross}, aspas, y @code{xcircle}, círculo con aspas) o
basados en una antigua tradición americana de grabado (ciertos nombres
de nota latinos trambién se permiten).

Dicho esto, para imitar antiguos cancioneros americanos, existen varios
estilos predefinidos de cabezas de nota disponibles a través de
instrucciones de abreviatura como @code{\\aikenHeads} o
@code{\\sacredHarpHeads}.

Este ejemplo muestra distintas formas de obtener cabezas de notas con forma,
y muestra la capacidad de transportar una melodía sin perder la
correspondencia entre las funciones armónicas y los estilos de cabezas de
nota.

"

  doctitlede = "Notenkopfstile besierend auf der Tonleiterstufe erstellen"
  texidocde = "
Die @code{shapeNoteStyles}-(NotenFormenStile)-Eigenschaft kann benutzt
werden, um verschiedene Notenstile für jeden Schritt der Tonleiter
zudefinieren (vorgegeben von der Tonart oder der @q{tonic}
(Tonika)-Eigneschaft.  Diese Eigenschaft braucht eine Anzahl von Symbolen,
welche beliebig sein können (geometrische Ausdrücke wie @code{triangle}
(Dreieck), @code{cross} (Kreuz) und @code{xcircle} (X-Kreis) sind erlaubt)
oder basierend auf einer alten amerikanischen Notensatztradition (einige
lateinische Notenbezeichnungen sind auch erlaubt).

Um alte amerikanische Liederbücher zu imitieren, gibt es einige
vordefinierte Notenstile wie etwa @code{\\aikenHeads} (im Stil von Aiken)
oder @code{\\sacredHarpHeads} (im Stil der Sacred Harp-Tradition).

Dieses Beispiel zeigt, wie man unterschiedlich geformte Noten erhält und
eine Melodie transponieren kann, ohne dass das Verhältnis zwischen den
harmonischen Funktionen und dem Notenstil verloren geht.

"

  texidoc = "
The @code{shapeNoteStyles} property can be used to define various note
head styles for each step of the scale (as set by the key signature or
the \"tonic\" property). This property requires a set of symbols, which
can be purely arbitrary (geometrical expressions such as
@code{triangle}, @code{cross}, and @code{xcircle} are allowed) or based
on old American engraving tradition (some latin note names are also
allowed).

That said, to imitate old American song books, there are several
predefined note head styles available through shortcut commands such as
@code{\\aikenHeads} or @code{\\sacredHarpHeads}.

This example shows different ways to obtain shape note heads, and
demonstrates the ability to transpose a melody without losing the
correspondence between harmonic functions and note head styles. 

"
  doctitle = "Applying note head styles depending on the step of the scale"
} % begin verbatim

fragment = {
  \key c \major
  c2 d
  e2 f
  g2 a
  b2 c
}

\score {
  \new Staff {
    \transpose c d 
    \relative c' {
      \set shapeNoteStyles = #'#(do re mi fa
                                 #f la ti)
      \fragment
    }

    \break

    \relative c' {
      \set shapeNoteStyles = #'#(cross triangle fa #f
                                 mensural xcircle diamond)
      \fragment
    }
  }
  \layout { ragged-right = ##t }
}




% ****************************************************************
% end ly snippet
% ****************************************************************
