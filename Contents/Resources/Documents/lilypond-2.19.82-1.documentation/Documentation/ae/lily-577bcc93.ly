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
\sourcefilename "positioning-fingering-indications-precisely.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: ff9ca62acddb818b7788d7818a5c7eb0ddb6cdcb
  texidoces = "
Generalmente, las opciones disponibles para la digitación de los
acordes funciona bien de forma predeterminada, pero si una de las
indicaciones precisa colocarse de forma más exacta puede usarse el
truco siguiente.  Esto es especialmente útil para corregir el
posicionado cuando están presentes intervalos de segunda.

"
  doctitlees = "Posicionamiento preciso de indicaciones de digitación"

%% Translation of GIT committish: 08c1ead90d9f49e66ce54208639fb9ef48ca52a6
  texidocfr = "
Les options par défaut en matière de positionnement des doigtés d'un
accord donnent généralement de bons résultats.  Il se peut néanmoins
qu'un ajustement soit nécessaire dans certains cas particuliers,
notamment en présence d'un intervalle de seconde.  L'astuce ici
présentée permet d'obtenir un meilleur rendu.

"
  doctitlefr = "Positionnement précis des indications de doigté"

  lsrtags = "editorial-annotations"

  texidoc = "
Generally the options available for positioning the fingering of chords
work well by default, but if one of the indications needs to positioned
more precisely the following tweak may be used.  This is particularly
useful for correcting the positioning when intervals of a second are
involved.

"
  doctitle = "Positioning fingering indications precisely"
} % begin verbatim

\relative c' {
  \set fingeringOrientations = #'(left)
  <c-1 d-2 a'-5>4
  <c-1 d-\tweak extra-offset #'(0 . 0.2)-2 a'-5>4
  \set fingeringOrientations = #'(down)
  <c-1 d-2 a'-5>4
  <c-\tweak extra-offset #'(0 . -1.1)-1
   d-\tweak extra-offset #'(-1.2 . -1.8)-2 a'-5>4
  \set fingeringOrientations = #'(down right up)
  <c-1 d-\tweak extra-offset #'(-0.3 . 0)-2 a'-5>4
  <c-1 d-\tweak extra-offset #'(-1 . 1.2)-2 a'-5>4
  \set fingeringOrientations = #'(up)
  <c-1 d-\tweak extra-offset #'(0 . 1.1)-2
   a'-\tweak extra-offset #'(0 . 1)-5>4
  <c-1 d-\tweak extra-offset #'(-1.2 . 1.5)-2
   a'-\tweak extra-offset #'(0 . 1.4)-5>4
}



% ****************************************************************
% end ly snippet
% ****************************************************************