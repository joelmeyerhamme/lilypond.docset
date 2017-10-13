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
\sourcefilename "using-double-slurs-for-legato-chords.ly"
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
Algunos compositores escriben dos ligaduras cuando quieren acordes
legato.  Esto se puede conseguir estableciendo @code{doubleSlurs}.

"
  doctitlees = "Utilizar ligaduras dobles para acordes legato"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Alcuni compositori scrivono due legature di portamento per indicare gli
accordi legati.  Si può ottenere questo risultato impostando @code{doubleSlurs}.

"
  doctitleit = "Uso delle doppie legature di portamento per gli accordi legati"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Einige Komponisten schreiben doppelte Bögen, wenn Legato-Akkorde notiert
werden.  Das kann mit der Eigenschaft @code{doubleSlurs} erreicht werden.

"
  doctitlede = "Doppelte Bögen für Legato-Akkorde benutzen"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Certains auteurs utilisent deux liaisons lorsqu'ils veulent lier des
accords.  Dans LilyPond, il faut pour cela activer la propriété
@code{doubleSlurs}.

"
  doctitlefr = "Accords et double liaison d'articulation"

  lsrtags = "expressive-marks"

  texidoc = "
Some composers write two slurs when they want legato chords.  This can
be achieved by setting @code{doubleSlurs}.

"
  doctitle = "Using double slurs for legato chords"
} % begin verbatim

\relative c' {
  \set doubleSlurs = ##t
  <c e>4( <d f> <c e> <d f>)
}



% ****************************************************************
% end ly snippet
% ****************************************************************
