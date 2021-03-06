%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote]
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
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "controlling-the-vertical-ordering-of-scripts.ly"
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
El orden vertical que ocupan las inscripciones gráficas está
controlado con la propiedad @code{'script-priority}. Cuanto más
bajo es este número, más cerca de la nota se colocará. En este
ejemplo, el @code{TextScript} (el sostenido) tiene primero la
prioridad más baja, por lo que se sitúa en la posición más baja en
el primer ejemplo. En el segundo, el semitrino (el @code{Script})
es el que la tiene más baja, por lo que se sitúa en la parte
interior. Cuando dos objetos tienen la misma prioridad, el orden
en que se introducen determina cuál será el que aparece en primer
lugar.

"
  doctitlees = "Controlar la ordenación vertical de las inscripciones"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
L'ordine verticale degli script è determinato dalla proprietà
@code{'script-priority}. Più il numero è piccolo, più sarà posto
vicino alla nota. In questo esempio, il simbolo di diesis (oggetto
@code{TextScript}) ha prima la priorità più bassa, dunque è posto più
in basso nel primo esempio. Nel secondo, il trillo (oggetto @code{Script}) ha
la priorità più bassa, quindi si trova all'interno. Quando due oggetti hanno
la stessa  priorità, l'ordine in cui sono inseriti determina quale viene
prima.

"
  doctitleit = "Controllo dell'ordine verticale degli script"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Die vertikale Anordnung von Beschriftungen wird mit der
@code{'script-priority}-Eigenschaft kontrolliert.  Um so kleiner die
Zahl, umso näher wird die Beschriftung in Bezug auf die Note gesetzt.  In
diesem Beispiel hat das @code{TextScript}-Objekt (das Kreuz) zuerst
die niedrigste Priorität, wird also auch am niedrigsten in dem ersten
Beispiel gesetzt.  Im zweiten Fall hat der Praller (das @code{Script})
die niedrigste Priorität, darum wird er am nächsten zum System gesetzt.
Wenn zwei Objekte die gleiche Priorität haben, wird ihre Reihenfolge
anhand ihres Auftretens in der Quelldatei entschieden.

"
  doctitlede = "Die vertikale Anordnung von Beschriftungen kontrollieren"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Les symboles s'ordonnent verticalement suivant la propriété
@code{script-priority}.  Plus sa valeur numérique est faible, plus le
symbole sera proche de la note.  Dans l'exemple suivant, l'objet
@code{TextScript} -- le dièse -- a d'abord la propriété la plus basse et
se voit donc placé au plus près de la note ; ensuite, c'est l'objet
@code{Script} -- le mordant -- qui a la propriété la plus basse, et se
place alors sous le dièse.  Lorsque deux objets ont la même priorité,
c'est l'ordre dans lequel ils sont indiqués qui détermine lequel sera
placé en premier.

"
  doctitlefr = "Contrôle de l'ordre vertical des articulations et ornements"

  lsrtags = "expressive-marks, tweaks-and-overrides"

  texidoc = "
The vertical ordering of scripts is controlled with the
@code{'script-priority} property. The lower this number, the closer it
will be put to the note. In this example, the @code{TextScript} (the
sharp symbol) first has the lowest priority, so it is put lowest in the
first example. In the second, the prall trill (the @code{Script}) has
the lowest, so it is on the inside. When two objects have the same
priority, the order in which they are entered determines which one
comes first.

"
  doctitle = "Controlling the vertical ordering of scripts"
} % begin verbatim

\relative c''' {
  \once \override TextScript.script-priority = #-100
  a2^\prall^\markup { \sharp }

  \once \override Script.script-priority = #-100
  a2^\prall^\markup { \sharp }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
