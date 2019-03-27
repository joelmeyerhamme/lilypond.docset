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
\sourcefilename "tweaking-grace-layout-within-music.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: 8ffecf6be17c6ec2ff87cf31873121a8cce29b09
  texidoces = "
La disposición de las expresiones de adorno se puede cambiar a lo
largo de toda la música usando las funciones
@code{add-grace-property} y @code{remove-grace-property}.  El
ejemplo siguiente borra la definición de la dirección de la plica
para esta nota de adorno, de manera que las plicas no siemmpre
apuntan hacia arriba, y cambia la forma predeterminada de las
cabezas a aspas.

"
  doctitlees = "Trucar la disposición de las notas de adorno dentro de la música"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
L'aspetto di tutte le espressioni contenute nei blocchi @code{\grace} di un
brano può essere modificato con le funzioni @code{add-grace-property} e
@code{remove-grace-property}. L'esempio seguente toglie la definizione
della direzione di @code{Stem} nell'abbellimento, in modo che gli abbellimenti
non siano sempre rivolti in su, e barra le teste di nota.

"
  doctitleit = "Modificare l'aspetto degli abbellimenti di un intero brano"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Das Layout von Verzierungsausdrücken kann in der Musik verändert
werden mit den Funktionen @code{add-grace-property} und
@code{remove-grace-property}.  Das folgende Beispiel definiert
die Richtung von Hälsen (Stem) für diese Verzierung, sodass die
Hälse nicht immer nach unten zeigen, und ändert den Standardnotenkopf
in ein Kreuz.
"
  doctitlede = "Veränderung des Layouts von Verzierungen innerhalb der Noten"



%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Il est possible de changer globalement la mise en forme des notes
d'ornement dans un morceau, au moyen des fonctions
@code{add-grace-property} et @code{remove-grace-property}.  Ici,
par exemple, on ôte la définition de l'orientation des objets
@code{Stem} pour toutes les petites notes, afin que les hampes ne
soient pas toujours orientées vers le haut, et on leur préfère des
têtes en forme de croix.

"
  doctitlefr = "Mise en forme des notes d'ornement"

  lsrtags = "rhythms, tweaks-and-overrides"

  texidoc = "
The layout of grace expressions can be changed throughout the music
using the functions @code{add-grace-property} and
@code{remove-grace-property}. The following example undefines the
@code{Stem} direction for this grace, so that stems do not always point
up, and changes the default note heads to crosses.

"
  doctitle = "Tweaking grace layout within music"
} % begin verbatim

\relative c'' {
  \new Staff {
    $(remove-grace-property 'Voice 'Stem 'direction)
    $(add-grace-property 'Voice 'NoteHead 'style 'cross)
    \new Voice {
       \acciaccatura { f16 } g4
       \grace { d16 e } f4
       \appoggiatura { f,32 g a } e2
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
