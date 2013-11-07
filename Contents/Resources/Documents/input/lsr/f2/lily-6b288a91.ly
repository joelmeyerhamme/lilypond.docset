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
\sourcefilename "vertically-aligning-dynamics-across-multiple-notes.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "expressive-marks"

  texidoces = "
Las expresiones dinámicas que se comienzan, terminan o se producen
en la misma nota se alinean verticalmente.  Para asegurar que las
expresiones dinámicas se alinean cuando no se producen sobre la
misma nota, incremente la propiedad @code{staff-padding} del
objeto @code{DynamicLineSpanner}.

"
  doctitlees = "Alinear verticalmente expresiones dinámicas que abarcan varias notas"

  texidoc = "
Dynamics that occur at, begin on, or end on the same note will be
vertically aligned.  To ensure that dynamics are aligned when they do
not occur on the same note, increase the @code{staff-padding} property
of the @code{DynamicLineSpanner} object. 

"
  doctitle = "Vertically aligning dynamics across multiple notes"
} % begin verbatim

\relative c' {
  \override DynamicLineSpanner #'staff-padding = #4
  c2\p f\mf
  g2\< b4\> c\!
}




% ****************************************************************
% end ly snippet
% ****************************************************************
