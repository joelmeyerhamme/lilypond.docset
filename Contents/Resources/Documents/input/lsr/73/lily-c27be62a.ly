%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,doctitle,alt=[image of music],texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "controlling-the-placement-of-chord-fingerings.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "editorial-annotations, chords, keyboards, fretted-strings"

  texidoces = "
Se puede controlar con precisión la colocación de los números de digitación.

"
  doctitlees = "Controlar la colocación de las digitaciones de acordes"


%% Translation of GIT committish: 3f880f886831b8c72c9e944b3872458c30c6c839

  texidocfr = "
Le positionnement des doigtés peut être contrôlé de manière très précise.

"
  doctitlefr = "Conrôle du positionnement des doigtés"

  texidoc = "
The placement of fingering numbers can be controlled precisely.

"
  doctitle = "Controlling the placement of chord fingerings"
} % begin verbatim

\relative c' {
  \set fingeringOrientations = #'(left)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(down)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(down right up)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(up)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(left)
  <c-1>2
  \set fingeringOrientations = #'(down)
  <e-3>2
}





% ****************************************************************
% end ly snippet
% ****************************************************************
