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
\sourcefilename "ottava-text.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "pitches, text"

  texidoces = "
Internamente, la función @code{set-octavation} establece las
propiedades @code{ottavation} (por ejemplo, a @code{\"8va\"} o a
@code{\"8vb\"}) y @code{middleCPosition}.  Para sobreescribir el texto
del corchete, ajuste @code{ottavation} despues de invocar a
@code{set-octavation}.
"
  doctitlees = "Texto de octava alta y baja"
  
  
texidocde = "
Intern setzt die @code{set-octavation}-Funktion die Eigenschaften
@code{ottavation} (etwa auf den Wert @code{\"8va\"} oder @code{\"8vb\"})
und @code{middleCPosition}.  Um den Text der Oktavierungsklammer zu
ändern, kann @code{ottavation} manuell gesetzt werden, nachdem
@code{set-octavation} benützt wurde.

"

doctitlede = "Ottava-Text"

  texidoc = "
Internally, @code{\\ottava} sets the properties @code{ottavation} (for
example, to @code{\"8va\"} or @code{\"8vb\"}) and
@code{middleCPosition}.  To override the text of the bracket, set
@code{ottavation} after invoking @code{\\ottava}.

"
  doctitle = "Ottava text"
} % begin verbatim

{
  \ottava #1
  \set Staff.ottavation = #"8"
  c''1
  \ottava #0
  c'1
  \ottava #1
  \set Staff.ottavation = #"Text"
  c''1
}




% ****************************************************************
% end ly snippet
% ****************************************************************
