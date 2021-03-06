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
\sourcefilename "suppressing-warnings-for-clashing-note-columns.ly"
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
  texidoces = "
Si se colocan sobre la misma posición notas de dos voces distintas con
las plicas en la misma dirección, y ninguna de las voces tiene un
desplazamiento o ambas tienen el mismo desplazamiento, aparece el
mensaje de error @samp{advertencia: demasiadas columnas de notas en
colisión; se ignora} aparece al compilar el archivo de LilyPond.  Este
mensaje se puede evitar fijando la propiedad @code{'ignore-collision}
del objero @code{NoteColumn} al valor @code{#t}.  Observe que esto no
elimina solamente las advertencias, sino que hace que LilyPond deje de
intentar resolver las colisiones en absoluto, por lo que pueden
obtenerse resultados distintos de los esperados si no se usa con
prudencia.

"
  doctitlees = "Evitar las advertencias sobre columnas de notas que chocan"

%% Translation of GIT committish: 958e95822083954cad00e0a598eb9f12ceba67b9
  texidoc = "
Lorsque des notes simultanées appartenant à des voix différentes ont la
même orientation de hampe et qu'aucun décalage relatif à une voix n'a été
appliqué, LilyPond émettra l'avertissement « @emph{ignoring too many
clashing note columns} » (trop d'empilements de notes se chevauchent. On
fera au mieux).  On peut s'exonérer de cet avertissement en activant la
propriété @code{ignore-collision} de l'objet @code{NoteColumn}.  Notez
bien que ceci n'aura pas pour seul effet de supprimer les
avertissements ; les routines de résolution de collision sont par la
même occasion désactivées, ce qui peut engendrer certains
désagréments si vous en abusez.

"
  doctitlefr = "Suppression des avertissements de chevauchement"

  lsrtags = "simultaneous-notes, tweaks-and-overrides"

  texidoc = "
If notes from two voices with stems in the same direction are placed at
the same position, and both voices have no shift or the same shift
specified, the error message @samp{warning: ignoring too many clashing
note columns} will appear when compiling the LilyPond file.  This
message can be suppressed by setting the @code{'ignore-collision}
property of the @code{NoteColumn} object to @code{#t}. Please note that
this does not just suppress warnings  but stops LilyPond trying to
resolve collisions at all and so may have  unintended results unless
used with care.

"
  doctitle = "Suppressing warnings for clashing note columns"
} % begin verbatim

ignore = \override NoteColumn.ignore-collision = ##t

\relative c' {
  \new Staff <<
    \new Voice{ \ignore \stemDown f2 g }
    \new Voice{ c2 \stemDown c, }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
