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
\sourcefilename "setting-hairpin-behavior-at-bar-lines.ly"
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
Si la nota que da fin a un regulador cae sobre la primera parte de
un compás, el regulador se detiene en la línea divisoria
inmediatamente precedente.  Se puede controlar este comportamiento
sobreescribiendo la propiedad @code{'to-barline}.

"
  doctitlees = "Establecer el comportamiento de los reguladores en las barras de compás"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Se la nota che termina una forcella si trova sul primo battito di una
battuta, la forcella si ferma prima della stanghetta che precede la
nota.  Si può controllare questo comportamento modificando la
proprietà @code{'to-barline}.

"
  doctitleit = "Impostare il comportamento delle forcelle sulle stanghette"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Wenn die Note, an welcher eine Crescendo-Klammer endet, die erste Note
eines Taktes ist, wird die Klammer an der vorhergehenden Taktlinie
beendet.  Dieses Verhalten kann auch mit der Eigenschaft
@code{'to-barline} geändert werden:
"
  doctitlede = "Das Verhalten von Crescendo-Klammern an Taktlinien beeinflussen"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
En principe, un soufflet -- (de)crescendo imprimé sous forme graphique --
commence au bord gauche de la note de départ, et se termine au
bord droit de la note d'arrivée.  Cependant, si la note d'arrivée
est sur un premier temps, le soufflet s'arrêtera au niveau de la
barre de mesure qui la précède.  Ce comportement peut être annulé
en assignant @emph{faux} (@code{#f}) à la propriété @code{to-barline}.

"
  doctitlefr = "Soufflets et barres de mesure"

  lsrtags = "expressive-marks, tweaks-and-overrides"

  texidoc = "
If the note which ends a hairpin falls on a downbeat, the hairpin stops
at the bar line immediately preceding.  This behavior can be controlled
by overriding the @code{'to-barline} property.

"
  doctitle = "Setting hairpin behavior at bar lines"
} % begin verbatim

\relative c'' {
  e4\< e2.
  e1\!
  \override Hairpin.to-barline = ##f
  e4\< e2.
  e1\!
}



% ****************************************************************
% end ly snippet
% ****************************************************************
