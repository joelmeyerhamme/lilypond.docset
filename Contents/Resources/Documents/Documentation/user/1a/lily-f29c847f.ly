%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,lilyquote,ragged-right,alt=[image of music],texidoc]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm - 2.0 * 0.4\in
  ragged-right = ##t
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "piano-template-simple.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "keyboards, template"

  texidoces = "
Presentamos a continuación una plantilla de piano sencilla con algunas
notas.

"
  doctitlees = "Plantilla de piano (sencilla)"
  
  texidocde = "
Hier ein einfaches Klaviersystem.

"
  doctitlede = "Vorlage für einfache Klaviernotation"

  texidoc = "
Here is a simple piano staff with some notes.

"
  doctitle = "Piano template (simple)"
} % begin verbatim

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  
  a4 b c d  
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  
  a2 c  
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}




% ****************************************************************
% end ly snippet
% ****************************************************************