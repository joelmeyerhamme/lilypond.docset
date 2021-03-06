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
\sourcefilename "caesura-railtracks-with-fermata.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.19.80"

\header {
%% Translation of GIT committish: 8ffecf6be17c6ec2ff87cf31873121a8cce29b09
  texidoces = "
A veces se denota una «cesura» mediante una doble marca de respiración
parecida a las vías del tren, con un calderón encima. Este fragmento
de código presenta una combinación visualmente satisfactoria de estas
dos marcas.

"
  doctitlees = "Cesura tipo \"vías del tren\"con calderón"

%% Translation of GIT committish: c7c6c948c9b70464f7069354059e5a5a8aad4a5c
  texidocfr = "
Une césure peut parfois s'indiquer par une double respiration surmontée
d'un point d'orgue.  Le code ci-dessous permet d'obtenir la combinaison
répondant à cette esthétique.

"
  doctitlefr = "Césure en forme de « voie de chemin de fer » avec point d'orgue"

  lsrtags = "expressive-marks, symbols-and-glyphs, tweaks-and-overrides"

  texidoc = "
A caesura is sometimes denoted by a double @qq{railtracks} breath mark
with a fermata sign positioned above. This snippet shows an optically
pleasing combination of railtracks and fermata.

"
  doctitle = "Caesura (\"railtracks\") with fermata"
} % begin verbatim

\relative c'' {
  c2.
  % construct the symbol
  \override BreathingSign.text = \markup {
    \override #'(direction . 1)
    \override #'(baseline-skip . 1.8)
    \dir-column {
      \translate #'(0.155 . 0)
        \center-align \musicglyph "scripts.caesura.curved"
      \center-align \musicglyph "scripts.ufermata"
    }
  }
  \breathe c4
  % set the breathe mark back to normal
  \revert BreathingSign.text
  c2. \breathe c4
  \bar "|."
}



% ****************************************************************
% end ly snippet
% ****************************************************************
