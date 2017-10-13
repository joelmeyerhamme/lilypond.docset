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
\sourcefilename "placement-of-right-hand-fingerings.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "fretted-strings"

  texidoces = "
Es posible ejercer un mayor control sobre la colocación de las
digitaciones de la mano derecha estableciendo el valor de una
propiedad específica, como se muestra en el ejemplo siguiente.

"
  doctitlees = "Posicionamiento de digitaciones de mano derecha"

%% Translation of GIT committish: 3f880f886831b8c72c9e944b3872458c30c6c839

  texidocfr = "
Vous disposez d'une propriété spécifique qui permet de contrôler plus 
finement le positionnement des doigtés main droite, comme l'indique 
l'exemple suivant.

"
  doctitlefr = "Positionnement des doigtés main droite"


  texidoc = "
It is possible to exercise greater control over the placement of
right-hand fingerings by setting a specific property, as demonstrated
in the following example.

"
  doctitle = "Placement of right-hand fingerings"
} % begin verbatim

#(define RH rightHandFinger)

\relative c {
  \clef "treble_8"
  
  \set strokeFingerOrientations = #'(up down)
  <c-\RH #1 e-\RH #2 g-\RH #3 c-\RH #4 >4
  
  \set strokeFingerOrientations = #'(up right down)
  <c-\RH #1 e-\RH #2 g-\RH #3 c-\RH #4 >4
  
  \set strokeFingerOrientations = #'(left)
  <c-\RH #1 e-\RH #2 g-\RH #3 c-\RH #4 >2
}




% ****************************************************************
% end ly snippet
% ****************************************************************