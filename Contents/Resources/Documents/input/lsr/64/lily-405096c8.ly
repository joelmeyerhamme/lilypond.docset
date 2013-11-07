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
\sourcefilename "reverting-default-beam-endings.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "rhythms"

  texidoces = "
Para tipografiar las barras agrupadas en la forma @code{3-4-3-2}
en 12/8, en primer lugar tenemos que sobreescribir los finales de
barra predeterminados en 12/8, y después preparar los finales de
barra nuevos:

"
  doctitlees = "Alteración de los finales de barra predeterminados"

  texidoc = "
To typeset beams grouped @code{3-4-3-2} in 12/8 it is necessary first
to override the default beam endings  in 12/8, and then to set up the
new beaming endings: 

"
  doctitle = "Reverting default beam endings"
} % begin verbatim

\relative c'' {
  \time 12/8

  % Default beaming
  a8 a a a a a a a a a a a

  % Revert default values in scm/auto-beam.scm for 12/8 time
  #(revert-auto-beam-setting '(end * * 12 8) 3 8)
  #(revert-auto-beam-setting '(end * * 12 8) 3 4)
  #(revert-auto-beam-setting '(end * * 12 8) 9 8)
  a8 a a a a a a a a a a a

  % Set new values for beam endings
  #(override-auto-beam-setting '(end * * 12 8) 3 8)
  #(override-auto-beam-setting '(end * * 12 8) 7 8)
  #(override-auto-beam-setting '(end * * 12 8) 10 8)
  a8 a a a a a a a a a a a
}




% ****************************************************************
% end ly snippet
% ****************************************************************
