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
\sourcefilename "manually-controlling-beam-positions.ly"
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
Se pueden controlar manualmente las posiciones de las barras de
corchea, sobreescribiendo el valor del parámetro @code{positions} del
objeto gráfico @code{Beam}.

"
  doctitlees = "Controlar manualmente las posiciones de las barras"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Le positionnement et la pente des ligatures peuvent être contrôlés
manuellement à l'aide d'une adaptation de la propriété @code{positions}
de l'objet @code{Beam}.

"
  doctitlefr = "Contrôle manuel du positionnement des ligatures"

  lsrtags = "connecting-notes, rhythms, tweaks-and-overrides"

  texidoc = "
Beam positions may be controlled manually, by overriding the
@code{positions} setting of the @code{Beam} grob.




"
  doctitle = "Manually controlling beam positions"
} % begin verbatim

\relative c' {
  \time 2/4
  % from upper staff-line (position 2) to center (position 0)
  \override Beam.positions = #'(2 . 0)
  c8 c
  % from center to one above center (position 1)
  \override Beam.positions = #'(0 . 1)
  c8 c
}



% ****************************************************************
% end ly snippet
% ****************************************************************