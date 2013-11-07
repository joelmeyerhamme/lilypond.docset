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
\sourcefilename "stem-and-beam-behavior-in-tablature.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "fretted-strings"

  texidoces = "
La dirección de las plicas se contola de la misma forma en la
tablatura que en la notación tradicional. Las barras se pueden
poner horizontales, como se muestra en este ejemplo.

"
  doctitlees = "Comportamiento de las plicas y las barras de corchea en tablaturas"

%% Translation of GIT committish: 3f880f886831b8c72c9e944b3872458c30c6c839

  texidocfr = "
La direction des hampes se gère dans les tablatures tout comme en 
notation traditionnelle.  Les ligatures peuvvent être mises à l'horizontale 
comme le montre cet exemple.

"
  doctitlefr = "Hampes et ligatures en mode tablature"

  texidoc = "
The direction of stems is controlled the same way in tablature as in
traditional notation. Beams can be made horizontal, as shown in this
example.

"
  doctitle = "Stem and beam behavior in tablature"
} % begin verbatim

\new TabStaff {
  \relative c {
    g16 b d g b d g b
    \stemDown
    \override Beam #'damping = #+inf.0
    g,,16 b d g b d g b
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************