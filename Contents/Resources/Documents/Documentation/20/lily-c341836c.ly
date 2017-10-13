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
\sourcefilename "displaying-complex-chords.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: 46821fda434ae17eccc778bd1a0276e785fffdf6
  texidoces = "
He aquí una forma de imprimir un acorde en el que suena la misma nota
dos veces con distintas alteraciones.

"
  doctitlees = "Impresión de acordes complejos"

%% Translation of GIT committish: 9d1f4d4d16abf95cccf6bea9cf98c312e55a3ebf
  texidocfr = "
Voici comment obtenir l'impression d'un accord au sein duquel une même
note est jouée deux fois avec des altérations différentes.

"
  doctitlefr = "Impression d'accords complexes"

  lsrtags = "chords, simultaneous-notes, workaround"

  texidoc = "
Here is a way to display a chord where the same note is played twice
with different accidentals.

"
  doctitle = "Displaying complex chords"
} % begin verbatim

fixA = {
  \once \override Stem.length = #11
}

fixB = {
  \once \override NoteHead.X-offset = #1.7
  \once \override Stem.length = #7
  \once \override Stem.rotation = #'(45 0 0)
  \once \override Stem.extra-offset = #'(-0.1 . -0.2)
  \once \override Flag.style = #'no-flag
  \once \override Accidental.extra-offset = #'(4 . -.1)
}


\relative c' {
  << { \fixA <b d!>8 } \\ { \voiceThree \fixB dis } >> s
}



% ****************************************************************
% end ly snippet
% ****************************************************************
