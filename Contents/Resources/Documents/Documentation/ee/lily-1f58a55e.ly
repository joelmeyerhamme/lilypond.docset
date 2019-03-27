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
\sourcefilename "using-a-tick-as-the-breath-mark-symbol.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.19.80"

\header {
%% Translation of GIT committish: 262abf17c7827e88e3d509100c43920c8e225bec
  texidoces = "
La música vocal y de viento usa con frecuencia una raya corta como
signo de respiración.  Esto indica una repiración que quita un poco de
tiempo a la nota anterior en lugar de producir una corta pausa, lo que
se indica con la marca de respiración en forma de coma.  La marca se
puede mover ligeramente hacia arriba para alejarla del pentagrama.

"
  doctitlees = "Usar una raya corta como símbolo de respiración"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
La musica vocale e per fiati usa frequentemente il segno di spunta come segno
di respiro.  Questo indica un respiro che sottrae un po' di tempo alla nota
precedente invece di prendere una piccola pausa, indicata dal segno di
respiro rappresentato dalla virgola.  Il segno può essere spostato un po'
su per allontanarlo dal rigo.

"
  doctitleit = "Usare un segno di spunta come simbolo di respiro"

%% Translation of GIT committish: c7c6c948c9b70464f7069354059e5a5a8aad4a5c
  texidocfr = "
Les musiques vocales ou pour vents utilisent souvent une coche en
tant que signe de respiration.  Ceci indique une respiration qui
enlève une fraction à la note précédente plutôt qu'une véritable
pause comme le fait un signe sous forme de virgule.  La coche peut
être remontée un peu afin de l'isoler de la portée.

"
  doctitlefr = "Remplacement du signe de respiration par une coche"

  lsrtags = "expressive-marks"

  texidoc = "
Vocal and wind music frequently uses a tick mark as a breathing sign.
This indicates a breath that subtracts a little time from the previous
note rather than causing a short pause, which is indicated by the comma
breath mark.  The mark can be moved up a little to take it away from
the stave.

"
  doctitle = "Using a tick as the breath mark symbol"
} % begin verbatim

\relative c'' {
  c2
  \breathe
  d2
  \override BreathingSign.Y-offset = #2.6
  \override BreathingSign.text =
    \markup { \musicglyph "scripts.tickmark" }
  c2
  \breathe
  d2
}



% ****************************************************************
% end ly snippet
% ****************************************************************