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
\sourcefilename "creating-arpeggios-across-notes-in-different-voices.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "expressive-marks"

  texidoces = "
Se puede trazar un símbolo de arpegio entre notas de distintas
voces que están sobre el mismo pentagrama si el grabador
@code{Span_arpeggio_engraver} se traslada al contexto de
@code{Staff} context:

"
  doctitlees = "Crear arpegios entre notas de voces distintas"
  
%% Translation of GIT committish :<6ce7f350682dfa99af97929be1dec6b9f1cbc01a>
texidocde = "
Ein Arpeggio kann zwischen Noten aus unterschidlichen Stimmen auf demselben
System gezogen werden, wenn der @code{Span_arpeggio_engraver} in den 
@code{Staff}-Kontext verschoben wird:

"
  doctitlede = "Arpeggios zwischen unterschiedlichen Stimmen erzeugen"

  texidoc = "
An arpeggio can be drawn across notes in different voices on the same
staff if the @code{Span_arpeggio_engraver} is moved to the @code{Staff}
context: 

"
  doctitle = "Creating arpeggios across notes in different voices"
} % begin verbatim

\new Staff \with {
  \consists "Span_arpeggio_engraver"
}
\relative c' {
  \set Staff.connectArpeggios = ##t
  <<
    { <e' g>4\arpeggio <d f> <d f>2 } \\
    { <d, f>2\arpeggio <g b>2 }
  >>
}




% ****************************************************************
% end ly snippet
% ****************************************************************
