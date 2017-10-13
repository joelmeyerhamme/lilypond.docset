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
\sourcefilename "positioning-arpeggios.ly"
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
Si necesitamos alargar o acortar un símbolo de arpegio, podemos
modificar independientemente los extremos superior e inferior.

"
  doctitlees = "Posicionar símbolos de arpegio"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
L'ajustement de la taille d'une indication d'arpeggio s'effectue au
travers du positionnement de ses extrémités haute ou basse.

"
  doctitlefr = "Positionnement des arpeggios"

  lsrtags = "expressive-marks, tweaks-and-overrides"

  texidoc = "
If you need to extend or shorten an arpeggio, you can modify the upper
and lower start positions independently.

"
  doctitle = "Positioning arpeggios"
} % begin verbatim

\relative c' {
  <c e g b>1\arpeggio
  \once \override Arpeggio.positions = #'(-5 . 0)
  <c e g b>1\arpeggio
  \once \override Arpeggio.positions = #'(0 . 5)
  <c e g b>1\arpeggio
  \once \override Arpeggio.positions = #'(-5 . 5)
  <c e g b>1\arpeggio
}



% ****************************************************************
% end ly snippet
% ****************************************************************
