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
\sourcefilename "clefs-can-be-transposed-by-arbitrary-amounts.ly"
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
Se pueden transponer las claves en intervalos arbitrarios, no solo
octavas.

"
  doctitlees = "Las claves se pueden transponer en intervalos arbitrarios"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Les clefs peuvent être transposées d'un intervalle différent de l'octave.

"
  doctitlefr = "Transposition arbitraire d'une clef"

  lsrtags = "pitches"

  texidoc = "
Clefs can be transposed by arbitrary amounts, not just by octaves.

"
  doctitle = "Clefs can be transposed by arbitrary amounts"
} % begin verbatim

\relative c' {
  \clef treble
  c4 c c c
  \clef "treble_8"
  c4 c c c
  \clef "treble_5"
  c4 c c c
  \clef "treble^3"
  c4 c c c
}



% ****************************************************************
% end ly snippet
% ****************************************************************
