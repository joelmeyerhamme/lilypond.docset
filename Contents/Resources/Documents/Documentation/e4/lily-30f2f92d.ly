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
\sourcefilename "glissandi-can-skip-grobs.ly"
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
Los objetos gráficos de columna de nota (los grobs @code{NoteColumn})
pueden ser sobrepasados por los glissandos.

"
  doctitlees = "Glissando por debajo de un objeto gráfico"

%% Translation of GIT committish: ebe492ca408fb0d9abf80b94c56197eef8dc2f09
  texidocde = "@code{NoteColumn}-Grobs können bei Glissandos übersprungen werden."
  doctitlede = "Glissando kann Grobs überspringen"


%% Translation of GIT committish: c5f6541667b71037c4965b482a8161628c7cc485
  texidocfr = "
Un glissando peut sauter un objet @code{NoteColumn}.

"
  doctitlefr = "Glissando par dessus un objet graphique"

  lsrtags = "expressive-marks, staff-notation, tweaks-and-overrides"

  texidoc = "
@code{NoteColumn} grobs can be skipped over by glissandi.

"
  doctitle = "Glissandi can skip grobs"
} % begin verbatim

\relative c' {
  a2 \glissando
  \once \override NoteColumn.glissando-skip = ##t
  f''4 d,
}



% ****************************************************************
% end ly snippet
% ****************************************************************
