%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,lilyquote,doctitle,alt=[image of music],texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm - 2.0 * 0.4\in
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "non-traditional-key-signatures.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "pitches, staff-notation"

  doctitlees = "Armaduras de tonalidad no tradicionales"
  texidoces = "
La muy utilizada instrucción @code{\\key} establece la propiedad
@code{keySignature} property, dentro del contexto @code{Staff}.

Para crear armaduras de tonalidad no estándar, ajuste esta propiedad
directamente.  El formato de esta instrucción es una lista:

@code{\\set Staff.keySignature = #`(((octava . paso) . alteración)
((octava . paso) . alteración) ...)} donde, para cada elemento dentro
de la lista, @code{octava} especifica la octava (siendo cero la octava
desde el Do central hasta el Si por encima), @code{paso} especifica la
nota dentro de la octava (cero significa Do y 6 significa Si), y
@code{alteración} es @code{,SHARP ,FLAT ,DOUBLE-SHARP} etc. (observe
la coma precedente.)

Alternativamente, para cada elemento de la lista el uso del formato
más conciso @code{(paso . alteración)} especifica que la misma
alteración debe estar en todas las octavas.

He aquí un ejemplo de una posible armadura para generar una escala
exátona:
"

  doctitlede = "Untypische Tonarten"
  texidocde = "
Der üblicherweise benutzte @code{\\key}-Befehl setzt die
@code{keySignature}-Eigenschaft im @code{Staff}-Kontext.

Um untypische Tonartenvorzeichen zu erstellen, muss man diese Eigenschaft
direkt setzen.  Das Format für den Befehl ist eine Liste: @code{ \\set
Staff.keySignature = #`(((Oktave . Schritt) . Alteration) ((Oktave
. Schritt) . Alteration) ...)} wobei für jedes Element in der Liste
@code{Oktave} die Oktave angibt (0@tie{}ist die Oktave vom
eingestrichenen@tie{}C bis zum eingestrichenen@tie{}H), @code{Schritt} gibt
die Note innerhalb der Oktave an (0@tie{}heißt@tie{}C und
6@tie{}heißt@tie{}H), und @code{Alteration} ist @code{,SHARP ,FLAT
,DOUBLE-SHARP} usw.  (Beachte das beginnende Komma.)

Alternativ kann auch jedes Element der Liste mit dem allgemeineren Format
@code{(Schritt . Alteration)} gesetzt werden, wobei dann die Einstellungen
für alle Oktaven gelten.

Hier ein Beispiel einer möglichen Tonart für eine Ganztonleiter:
"

  texidoc = "
The commonly used @code{\\key} command sets the @code{keySignature}
property, in the @code{Staff} context.

To create non-standard key signatures, set this property directly. The
format of this command is a list:

@code{ \\set Staff.keySignature = #`(((octave . step) . alter) ((octave
. step) . alter) ...) } where, for each element in the list,
@code{octave} specifies the octave (0 being the octave from middle C to
the B above), @code{step} specifies the note within the octave (0 means
C and 6 means B), and @code{alter} is @code{,SHARP ,FLAT ,DOUBLE-SHARP}
etc. (Note the leading comma.) The accidentals in the key signature
will appear in the reverse order to that in which they are specified.


Alternatively, for each item in the list, using the more concise format
@code{(step . alter)} specifies that the same alteration should hold in
all octaves.


For microtonal scales where a \"sharp\" is not 100 cents, @code{alter}
refers to the alteration as a proportion of a 200-cent whole tone.


Here is an example of a possible key signature for generating a
whole-tone scale: 

"
  doctitle = "Non-traditional key signatures"
} % begin verbatim

\relative c' {
  \set Staff.keySignature = #`(((0 . 3) . ,SHARP)
                               ((0 . 5) . ,FLAT)
                               ((0 . 6) . ,FLAT))
  c4 d e fis
  aes4 bes c2
}



% ****************************************************************
% end ly snippet
% ****************************************************************
