%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote,ragged-right]
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
  ragged-right = ##t
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "beams-across-line-breaks.ly"
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
Normalmente están prohibidos los saltos de línea si las barras
atraviesan las líneas divisorias.  Se puede cambiar este
comportamiento como se muestra aquí:

"
  doctitlees = "Barras que atraviesan saltos de línea"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Le interruzioni di linea sono di norma proibite quando le travature attraversano
la stanghetta di una battuta. Si può cambiare questo comportamento nel modo
seguente:

"
  doctitleit = "Travature che attraversano le interruzioni di linea"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Zeilenumbrüche sind normalerweise während Balken verboten.  Das kann geändert
werden.

"
  doctitlede = "Balken über Zeilenumbrüche"



%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Il est normalement impensable qu'un saut de ligne tombe au milieu d'une
ligature.  LilyPond permet néanmoins de l'obtenir.

"
  doctitlefr = "Ligature au moment d'un saut de ligne"

  lsrtags = "rhythms"

  texidoc = "
Line breaks are normally forbidden when beams cross bar lines. This
behavior can be changed as shown:

"
  doctitle = "Beams across line breaks"
} % begin verbatim

\relative c'' {
  \override Beam.breakable = ##t
  c8 c[ c] c[ c] c[ c] c[ \break
  c8] c[ c] c[ c] c[ c] c
}



% ****************************************************************
% end ly snippet
% ****************************************************************
