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
\sourcefilename "making-glissandi-breakable.ly"
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
Si se ajusta la propiedad @code{breakable} al valor @code{#t} en
combinación con @code{after-line-breaking}, podemos hacer que un
glissando se divida en el salto de línea:

"
  doctitlees = "Hacer que los glissandos se puedan dividir en el salto de línea"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Per permettere a un glissando di andare a capo se capita su un'interruzione di
riga, si impostano le proprietà @code{breakable} e @code{after-line-breaking}
su @code{#t}:

"
  doctitleit = "Lasciare che i glissandi vadano a capo"

%% Translation of GIT committish: c5f6541667b71037c4965b482a8161628c7cc485
  texidocfr = "
L'affectation de la valeur @code{#t} à la propriété @code{breakable},
combinée à @code{after-line-breaking}, permet la rupture d'une
indication de glissando lors d'un saut de ligne.

"
  doctitlefr = "Saut de ligne et glissando"

  lsrtags = "staff-notation, tweaks-and-overrides"

  texidoc = "
Setting the @code{breakable} property to @code{#t} in combination with
@code{after-line-breaking} allows a glissando to break if it occurs at
a line break:

"
  doctitle = "Making glissandi breakable"
} % begin verbatim

glissandoSkipOn = {
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}

\relative c'' {
  \override Glissando.breakable = ##t
  \override Glissando.after-line-breaking = ##t
  f1\glissando |
  \break
  a4 r2. |
  f1\glissando
  \once \glissandoSkipOn
  \break
  a2 a4 r4 |
}



% ****************************************************************
% end ly snippet
% ****************************************************************
