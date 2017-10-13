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
\sourcefilename "alternative-bar-numbering.ly"
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
Se pueden seleccionar dos métodos alternativos para la numeración de
compases, especiales para cuando hay repeticiones.

"
  doctitlees = "Numeración de compases alternativa"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Si possono impostare due metodi alternativi di numerazione della battuta, utili
specialmente per le ripetizioni.

"
  doctitleit = "Numeri di battuta alternativi"


%% Translation of GIT committish: ebe492ca408fb0d9abf80b94c56197eef8dc2f09

  texidocde = "Zwei alternative Methoden können eingestellt werden,
  die die Taktnummerierung beeinflussen, insbesondere bei Wiederholungen."

  doctitlede = "Alternative Taktnummerierung"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Deux méthodes alternatives vous permettent de gérer la numérotation des
mesures en cas de reprises.

"
  doctitlefr = "Numérotation des mesures et alternatives"

  lsrtags = "editorial-annotations, staff-notation, tweaks-and-overrides"

  texidoc = "
Two alternative methods for bar numbering can be set, especially for
when using repeated music.

"
  doctitle = "Alternative bar numbering"
} % begin verbatim

\relative c'{
  \set Score.alternativeNumberingStyle = #'numbers
  \repeat volta 3 { c4 d e f | }
    \alternative {
      { c4 d e f | c2 d \break }
      { f4 g a b | f4 g a b | f2 a | \break }
      { c4 d e f | c2 d }
    }
  c1 \break
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  \repeat volta 3 { c,4 d e f | }
    \alternative {
      { c4 d e f | c2 d \break }
      { f4 g a b | f4 g a b | f2 a | \break }
      { c4 d e f | c2 d }
    }
  c1
}



% ****************************************************************
% end ly snippet
% ****************************************************************
