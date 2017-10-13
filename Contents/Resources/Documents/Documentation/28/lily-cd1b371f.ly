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
\sourcefilename "positioning-grace-notes-with-floating-space.ly"
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
Al establecer la propiedad @code{'strict-grace-spacing} hacemos que
las columnas musicales para las notas de adorno sean @q{flotantes}, es
decir, desacopladas de las notas que no son de adorno: primero se
aplica el espaciado de las notas normales, y luego se ponen las
columnas musicales de las notas de adorno a la izquierda de las
columnas musicales de las notas principales.

"
  doctitlees = "Posicionamiento de las notas de adorno con espacio flotante"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Se si imposta la proprietà @code{'strict-grace-spacing}, le colonne musicali
degli abbellimenti 'fluttuano', ovvero si scollegano dalle note normali:
prima vengono spaziate le note normali, poi le colonne musicali degli
abbellimenti vengono messe a sinistra delle colonne delle note principali.

"
  doctitleit = "Posizionare gli abbellimenti con dello spazio fluttuante"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Wenn man die Eigenschaft @code{'strict-grace-spacing} aktiviert,
werden die Verzierungsnoten \"fließend\" gemacht, d.h. sie sind
von den normalen Noten los gekoppelt: Zuerst werden die normalen
Noten platziert, dann erst die Verzierungen links von der
Hauptnote gesetzt.

"
  doctitlede = "Positionierung von Verzierungen mit verschiebbarem Platz"



%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Lorsqu'est activée la propriété @code{strict-grace-spacing},
l'espacement des notes d'ornement se fera de manière « élastique ».
Autrement dit, elles seront décollées de leur note de rattachement :
LilyPond commence par espacer les notes normales, puis les ornements
sont placés à la gauche de leur note de rattachement.

"
  doctitlefr = "Positionnement des notes d'ornement avec espace flottant"

  lsrtags = "rhythms"

  texidoc = "
Setting the property @code{'strict-grace-spacing} makes the musical
columns for grace notes 'floating', i.e., decoupled from the non-grace
notes: first the normal notes are spaced, then the (musical columns of
the) graces are put left of the musical columns for the main notes.

"
  doctitle = "Positioning grace notes with floating space"
} % begin verbatim

\relative c'' {
  <<
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \new Staff \new Voice {
      \afterGrace c4 { c16[ c8 c16] }
      c8[ \grace { b16 d } c8]
      c4 r
    }
    \new Staff {
      c16 c c c c c c c c4 r
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************