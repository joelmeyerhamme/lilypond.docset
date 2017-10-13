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
\sourcefilename "specifying-context-with-beatgrouping.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "rhythms, tweaks-and-overrides"

  texidoces = "
Mediante la especificación del contexto, el efecto de
@code{beatGrouping} puede limitarse al contexto especificado, y
sobreescribirse los valores establecidos en contextos de niveles más
altos:

"
  doctitlees = "Especificar el contexto con beatGrouping"

  texidoc = "
By specifying the context, the effect of @code{beatGrouping} can be
limited to the context specified, and the values which may have been
set in higher-level contexts can be overridden.  The @code{\\set}
commands must be placed after all @code{\\time} commands:

"
  doctitle = "Specifying context with beatGrouping"
} % begin verbatim

\score {
  \new Staff <<
    \time 7/8
    \new Voice {
      \relative c'' {
        \set Staff.beatGrouping = #'(2 3 2)
        a8 a a a a a a
      }
    }
    \new Voice {
      \relative c' {
        \voiceTwo
        \set beatGrouping = #'(1 3 3)
        f8 f f f f f f
      }
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************