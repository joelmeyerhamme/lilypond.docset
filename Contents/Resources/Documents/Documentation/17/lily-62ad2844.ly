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
\sourcefilename "removing-bar-numbers-from-a-score.ly"
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
Se pueden eliminar completamente los números de compás quitando el
grabador @code{Bar_number_engraver} del contexto de @code{Score}.

"
  doctitlees = "Suprimir los números de compás de toda la partitura"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
I numeri di battuta possono essere tolti rimuovendo l'incisore
@code{Bar_number_engraver} dal contesto @code{Score}.

"
  doctitleit = "Togliere i numeri di battuta da uno spartito"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Taktnummern können vollkommen aus den Noten entfernt werden, indem
man den @code{Bar_number_engraver} aus dem @code{Score}-Kontext
entfernt.

"
  doctitlede = "Entfernung von Taktnummern in einer Partitur"



%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Désactiver le graveur concerné -- @code{Bar_number_engraver} --
donnera une partition -- contexte @code{Score} -- sans numéros de
mesure.

"
  doctitlefr = "Suppression des numéros de mesure d'une partition"

  lsrtags = "contexts-and-engravers, rhythms"

  texidoc = "
Bar numbers can be removed entirely by removing the
@code{Bar_number_engraver} from the @code{Score} context.

"
  doctitle = "Removing bar numbers from a score"
} % begin verbatim

\layout {
  \context {
    \Score
    \omit BarNumber
    % or:
    %\remove "Bar_number_engraver"
  }
}

\relative c'' {
  c4 c c c \break
  c4 c c c
}



% ****************************************************************
% end ly snippet
% ****************************************************************
