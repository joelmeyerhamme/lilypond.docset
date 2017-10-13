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
\sourcefilename "stand-alone-two-column-markup.ly"
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
Los textos independientes se pueden disponer en varias columnas
utilizando instrucciones @code{\\markup}:

"
  doctitlees = "Elemento de marcado de texto independiente en dos columnas"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Il testo separato può essere disposto su varie colonne con i comandi di
@code{\\markup}:
"
  doctitleit = "Testo separato su due colonne"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Isolierter Text kann in mehreren Spalten mit @code{\\markup}-Befehlen
angeordnet werden:

"
  doctitlede = "Isolierter Text in zwei Spalten"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
L'utilisation de la commande @code{\\markup} permet de distribuer un bloc
de texte indépendant sur plusieurs colonnes.

"
  doctitlefr = "Bloc de texte indépendant sur deux colonnes"

  lsrtags = "text"

  texidoc = "
Stand-alone text may be arranged in several columns using
@code{\\markup} commands:

"
  doctitle = "Stand-alone two-column markup"
} % begin verbatim

\markup {
  \fill-line {
    \hspace #1
    \column {
      \line { O sacrum convivium }
      \line { in quo Christus sumitur, }
      \line { recolitur memoria passionis ejus, }
      \line { mens impletur gratia, }
      \line { futurae gloriae nobis pignus datur. }
      \line { Amen. }
    }
    \hspace #2
    \column \italic {
      \line { O sacred feast }
      \line { in which Christ is received, }
      \line { the memory of His Passion is renewed, }
      \line { the mind is filled with grace, }
      \line { and a pledge of future glory is given to us. }
      \line { Amen. }
    }
    \hspace #1
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************