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
\sourcefilename "chord-name-exceptions.ly"
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
Se puede usar la propiedad @code{chordNameExceptions} para
almacenar una lista de notaciones espaciales para acordes
específicos.

"
  doctitlees = "Excepciones para los nombres de acorde"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Die Eigenschaft @code{chordNameExceptions} kann benutzt werden, um eine
Liste an besonderen Notationen für bestimmte Akkorde zu speichern.

"
  doctitlede = "Akkordsymbolausnahmen"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Il est possible de créer votre propre modèle de chiffrages en réglant la
propriété @code{chordNameExceptions}.

"
  doctitlefr = "Modèles de chiffrage d'accords"

  lsrtags = "chords, specific-notation"

  texidoc = "
The property @code{chordNameExceptions} can be used to store a list of
special notations for specific chords.

"
  doctitle = "Chord name exceptions"
} % begin verbatim

% modify maj9 and 6(add9)
% Exception music is chords with markups
chExceptionMusic = {
  <c e g b d'>1-\markup { \super "maj9" }
  <c e g a d'>1-\markup { \super "6(add9)" }
}

% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

theMusic = \chordmode {
  g1:maj9 g1:6.9
  \set chordNameExceptions = #chExceptions
  g1:maj9 g1:6.9
}

\layout {
  ragged-right = ##t
}

<< \context ChordNames \theMusic
   \context Voice \theMusic
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
