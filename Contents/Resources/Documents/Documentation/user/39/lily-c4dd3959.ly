%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,lilyquote,doctitle,alt=[image of music],texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm - 2.0 * 0.4\in
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "changing--flageolet-mark-size.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "expressive-marks, unfretted-strings"

  texidoces = "
Para hacer más pequeño el círculo de @code{\\flageolet} (armónico)
utilice la siguiente función de Scheme.

"
  doctitlees = "Cambiar el tamaño de la marca de \\flageolet"

  texidoc = "
To make the @code{\\flageolet} circle smaller use the following Scheme
function. 

"
  doctitle = "Changing \\flageolet mark size"
} % begin verbatim

smallFlageolet =
#(let ((m (make-music 'ArticulationEvent
                      'articulation-type "flageolet")))
   (ly:music-set-property! m 'tweaks
     (acons 'font-size -3
       (ly:music-property m 'tweaks)))
  m)

\layout { ragged-right = ##f }

\relative c'' {
  d4^\flageolet_\markup { default size } d_\flageolet
  c4^\smallFlageolet_\markup { smaller } c_\smallFlageolet
}




% ****************************************************************
% end ly snippet
% ****************************************************************
