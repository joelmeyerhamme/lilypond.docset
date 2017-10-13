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
\sourcefilename "vertically-aligned-dynamics-and-textscripts.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: 262abf17c7827e88e3d509100c43920c8e225bec
  texidoces = "
Todos los objetos @code{DynamicLineSpanner} (reguladores e
indicaciones dinámicas de texto) se sitúan con su línea de referencia a
una distancia de al menos @code{'staff-padding} del pentagrama, a no
ser que otros elementos de notación los fuerce a colocarse a más
distancia.  Si se ajusta @code{'staff-padding} a un valor
suficientemente grande, las indicaciones dinámicas quedarán alineadas.

Se usa una idea similar junto a \\textLengthOn para alinear las
inscripciones de texto a lo largo de su línea de base.

"
  doctitlees = "Indicaciones dinámicas y textuales alineadas verticalmente"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Tutti gli oggetti @code{DynamicLineSpanner} (forcelle e testi di dinamica)
sono posti a una distanza minima dal rigo determinata da @code{'staff-padding}.
Se si imposta @code{'staff-padding} su un valore abbastanza grande,
le dinamiche saranno allineate.

"
  doctitleit = "Dinamiche e segni testuali allineati verticalmente"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Indem man die @code{'Y-extent}-Eigenschaft auf einen passenden Wert setzt,
können alle @code{DynamicLineSpanner}-Objekte (Crescendo-Klammern und
Dynamik-Texte)  (hairpins and dynamic texts) unabhängig von ihrer
wirklichen Ausdehnung an einem gemeinsamen Referenzpunkt ausgerichtet werden.
Auf diese Weise ist jedes Element vertikal ausgerichtet und der Notensatz
sieht ansprechender aus.

Die gleiche Idee wird benutzt, um Textbeschriftungen an ihrer
Grundlinie auszurichten.

"
  doctitlede = "Vertikale Ausrichtung von Dynamik und Textbeschriftung beeinflussen"

%% Translation of GIT committish: d935a5a0fac63dc0dcd8197d4d2286d235fe617c
  texidocfr = "
Tous les objets @code{DynamicLineSpanner} (soufflets ou nuances
textuelles) viennent s'aligner sur une ligne de référence placée, par
rapport à la portée, à au moins la valeur de @code{'staff-padding} sauf
lorsque d'autres éléments de notation les en éloigne plus.  Les nuances
seront centrés sur une même ligne dès lors que @code{'staff-padding}
aura été défini à une valeur suffisante.

C'est le même principe -- en combinaison avec @code{\\textLengthOn} --
qui sert à aligner les indications textuelles sur une ligne de
référence.

"
  doctitlefr = "Alignement vertical des nuances indications textuelles"

  lsrtags = "spacing, tweaks-and-overrides, workaround"

  texidoc = "
All @code{DynamicLineSpanner} objects (hairpins and dynamic texts) are
placed with their reference line at least @code{'staff-padding} from
the staff, unless other notation forces them to be farther. Setting
@code{'staff-padding} to a sufficiently large value aligns the dynamics.

The same idea, together with @code{\\textLengthOn}, is used to align
the text scripts along their baseline.

"
  doctitle = "Vertically aligned dynamics and textscripts"
} % begin verbatim

music = \relative c' {
  a'2\p b\f
  e4\p f\f\> g, b\p
  c2^\markup { \huge gorgeous } c^\markup { \huge fantastic }
}

{
  \music
  \break
  \override DynamicLineSpanner.staff-padding = #3
  \textLengthOn
  \override TextScript.staff-padding = #1
  \music
}



% ****************************************************************
% end ly snippet
% ****************************************************************