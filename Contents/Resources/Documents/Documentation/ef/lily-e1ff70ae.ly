%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "tweaking-clef-properties.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: db22ad98af264b424e36b161c23fed43111b5c8a
  doctitlees = "Trucaje de las propiedades de clave"
  texidoces = "
La modificación del glifo de la clave, su posición o su octavación, no
cambian 'per se' la posición de las siguientes notas del pentagrama.
Para conseguir armaduras de tonalidad sobre las líneas del pentagrama
adecuadas, también debe especificarse @code{middleCClefPosition}, con
valores positivos o negativos que mueven el @code{Do central} hacia
arriba o hacia abajo, respectivamente, en relación con la línea
central del pentagrama (usualmente la tercera).

Por ejemplo, la instrucción @code{\\clef \"treble_8\"} equivale a un
ajuste de @code{clefGlyph}, @code{clefPosition} (que controla la
posición vertical de la clave sobre el pentagrama),
@code{middleCPosition} y @code{clefTransposition}.  Se imprime una
clave cada vez que se modifica cualquiera de las propiedades excepto
@code{middleCPosition}.

Los siguientes ejemplos muestran las posibilidades cuando se ajustan
estas propiedades manualmente.  En la primera línea, los cambios
manuales preservan el posicionamiento relativo estándar de las claves
y las notas, pero no lo hacen en la segunda línea.

"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Cambiando il glifo della chiave, la sua posizione o l'ottavazione non
cambia la posizione delle note successive nel rigo.  Per far sì che
le armature di chiave si trovino sulle linee del rigo corrette, bisogna
specificare anche @code{middleCPosition}, con valori positivi o negativi
che spostano il @code{Do centrale} rispettivamente su o giù in senso
relativo alla linea centrale del rigo.

Per esempio, @code{\\clef \"treble_8\"} equivale a impostare
@code{clefGlyph}, @code{clefPosition} (che regola la posizione
verticale della chiave), @code{middleCPosition} e
@code{clefTransposition}. Viene stampata una chiave quando cambia una
di queste proprietà, eccetto @code{middleCPosition}.

Gli esempi seguenti mostrano le possibilità date dall'impostazione
manuale di tali proprietà. Sulla prima linea le modifiche manuali preservano
il posizionamento relativo standard di chiavi e note, mentre sulla seconda
linea non lo fanno.


"
  doctitleit = "Modifiche manuali della proprietà della chiave"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  doctitlede = "Eigenschaften des Schlüssels optimieren"
  texidocde = "
Der Befehl @code{\\clef \"treble_8\"} ist gleichbedeutend mit einem
expliziten Setzen der Eigenschaften von @code{clefGlyph},
@code{clefPosition} (welche die vertikale Position des Schlüssels bestimmt),
@code{middleCPosition} und @code{clefTransposition}.  Ein Schlüssel wird
ausgegeben, wenn eine der Eigenschaften außer @code{middleCPosition} sich
ändert.

Eine Änderung des Schriftzeichens (Glyph), der Schlüsselposition oder der
Oktavierung selber ändert noch nicht die Position der darauf folgenden Noten
auf dem System: das geschieht nur, wenn auch die Position des
eingestrichenen@tie{}C (middleCPosition) angegeben wird.  Die
Positionsparameter sind relativ zur Mittellinie des Systems, dabei versetzen
positive Zahlen die Position nach oben, jeweils eine Zahl für jede Linie
plus Zwischenraum.  Der @code{clefTransposition}-Wert ist normalerweise auf 7,
-7, 15 oder -15 gesetzt, aber auch andere Werte sind gültig.

Wenn ein Schlüsselwechsel an einem Zeilenwechsel geschieht, wird das neue
Symbol sowohl am Ende der alten Zeilen als auch am Anfang der neuen Zeile
ausgegeben.  Wenn der Warnungs-Schlüssel am Ende der alten Zeile nicht
erforderlich ist, kann er unterdrückt werden, indem die
@code{explicitClefVisibility}-Eigenschaft des @code{Staff}-Kontextes auf den
Wert @code{end-of-line-invisible} gesetzt wird.  Das Standardverhalten kann
mit @code{\\unset Staff.explicitClefVisibility} wieder hergestellt werden.

Die folgenden Beispiele zeigen die Möglichkeiten, wenn man diese
Eigenschaften manuell setzt.  Auf der ersten Zeile erhalten die manuellen
Änderungen die ursprüngliche relative Positionierung von Schlüssel und
Noten, auf der zweiten Zeile nicht.
"

%% Translation of GIT committish: 958e95822083954cad00e0a598eb9f12ceba67b9
  texidocfr = "
Modifier le glyphe, la position de la clef ou son octaviation ne
changeront pas la position des notes ; il faut pour y parvenir modifier
aussi la position du do médium.  La redéfinition préalable de
@code{middleCClefPosition} permet de placer l'armure sur les bonnes
lignes.  Le positionnement est relatif à la ligne médiane, un nombre
positif faisant monter, un nombre négatif abaissant.

Par exemple, la commande @code{\\clef \"treble_8\"} équivaut à définir
@code{clefGlyph}, @code{clefPosition} -- qui contrôle la position
verticale de la clef -- @code{middleCPosition} et @code{clefOctavation}.
Une nouvelle clef apparaîtra dès lors que l'une de ces propriétés, à
l'exception de @code{middleCPosition}, aura été modifiée.

Les exemples qui suivent illustrent les différentes possibilités de
définir ces propriétés manuellement.  Sur la première ligne, la
position relative des notes par rapport aux clefs est préservée, ce
qui n'est pas le cas pour la deuxième ligne.

"
  doctitlefr = "Affinage des propriétés d'une clef"

  lsrtags = "pitches, staff-notation, tweaks-and-overrides"

  texidoc = "
Changing the Clef glyph, its position, or the ottavation does not
change the position of subsequent notes on the staff.  To get key
signatures on their correct staff lines @code{middleCClefPosition} must
also be specified, with positive or negative values moving @code{middle
C} up or down respectively, relative to the staff's center line.


For example, @code{\\clef \"treble_8\"} is equivalent to setting the
@code{clefGlyph}, @code{clefPosition} (the vertical position of the
clef itself on the staff), @code{middleCPosition} and
@code{clefTransposition}. Note that when any of these properties
(except @code{middleCPosition}) are changed a new clef symbol is
printed.


The following examples show the possibilities when setting these
properties manually. On the first line, the manual changes preserve the
standard relative positioning of clefs and notes, whereas on the second
line, they do not.

"
  doctitle = "Tweaking clef properties"
} % begin verbatim

{
  % The default treble clef
  \key f \major
  c'1
  % The standard bass clef
  \set Staff.clefGlyph = #"clefs.F"
  \set Staff.clefPosition = #2
  \set Staff.middleCPosition = #6
  \set Staff.middleCClefPosition = #6
  \key g \major
  c'1
  % The baritone clef
  \set Staff.clefGlyph = #"clefs.C"
  \set Staff.clefPosition = #4
  \set Staff.middleCPosition = #4
  \set Staff.middleCClefPosition = #4
  \key f \major
  c'1
  % The standard choral tenor clef
  \set Staff.clefGlyph = #"clefs.G"
  \set Staff.clefPosition = #-2
  \set Staff.clefTransposition = #-7
  \set Staff.middleCPosition = #1
  \set Staff.middleCClefPosition = #1
  \key f \major
  c'1
  % A non-standard clef
  \set Staff.clefPosition = #0
  \set Staff.clefTransposition = #0
  \set Staff.middleCPosition = #-4
  \set Staff.middleCClefPosition = #-4
  \key g \major
  c'1 \break

  % The following clef changes do not preserve
  % the normal relationship between notes, key signatures
  % and clefs:

  \set Staff.clefGlyph = #"clefs.F"
  \set Staff.clefPosition = #2
  c'1
  \set Staff.clefGlyph = #"clefs.G"
  c'1
  \set Staff.clefGlyph = #"clefs.C"
  c'1
  \set Staff.clefTransposition = #7
  c'1
  \set Staff.clefTransposition = #0
  \set Staff.clefPosition = #0
  c'1

  % Return to the normal clef:

  \set Staff.middleCPosition = #0
  c'1
}



% ****************************************************************
% end ly snippet
% ****************************************************************
