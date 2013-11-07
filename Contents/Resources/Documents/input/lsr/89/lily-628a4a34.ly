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
\sourcefilename "creating-real-parenthesized-dynamics.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "expressive-marks, text"

  texidoces = "
Aunque la manera más fácil de añadir paréntesis a una indicación
de dinámica es utilizar un bloque @code{\\markup}, este método
tiene un inconveniente: los objetos que se crean se comportarán
como elementos de marcado de texto y no como indicaciones
dinámicas.

Sin embargo, es posible crear un objeto similar utilizando el
código de Scheme equivalente (como se explica en \"Interfaz del
programador de elementos de marcado\"), en combinación con la
función @code{make-dynamic-script}. De esta forma, el elemento de
marcado se tratará como una indicación dinámica, y por tanto
seguirá siendo compatible con instrucciones como
@code{\\dynamicUp} o @code{\\dynamicDown}.

"
  doctitlees = "Crear indicaciones dinámicas \"verdaderas\" entre paréntesis"

  texidoc = "
Although the easiest way to add parentheses to a dynamic mark is to use
a @code{\\markup} block, this method has a downside: the created
objects will behave like text markups, and not like dynamics.

However, it is possible to create a similar object using the equivalent
Scheme code (as described in \"Markup programmer interface\"), combined
with the @code{make-dynamic-script} function. This way, the markup will
be regarded as a dynamic, and therefore will remain compatible with
commands such as @code{\\dynamicUp} or @code{\\dynamicDown}.



"
  doctitle = "Creating \"real\" parenthesized dynamics"
} % begin verbatim

parenF = #(make-dynamic-script (markup #:line (#:normal-text #:italic
           #:fontsize 2 "(" #:hspace -0.8 #:dynamic "f" #:normal-text
           #:italic #:fontsize 2 ")")))

\relative c'' {
  c4\parenF c c \dynamicUp c\parenF
}




% ****************************************************************
% end ly snippet
% ****************************************************************
