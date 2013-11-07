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
\sourcefilename "piano-template-with-centered-lyrics.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "text, keyboards, template"

  texidoces = "
En lugar de tener un pentagrama dedicado a la melodía y la letra, ésta
se puede centrar entre los pentagramas de un sistema de piano.

"
  doctitlees = "Plantilla de piano con letra centrada"
  
  texidocde = "
Anstatt ein eigenes System für Melodie und Text zu schreiben, können 
Sie den Text auch zwischen die beiden Klaviersysteme schreiben
(und damit das zusätzliche System für die Gesangstimme auslassen).
"

  texidoc = "
Instead of having a full staff for the melody and lyrics, lyrics can be
centered between the staves of a piano staff.

"
  doctitle = "Piano template with centered lyrics"
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

text = \lyricmode {
  Aaa Bee Cee Dee
}

\score {
  \new GrandStaff <<
    \new Staff = upper { \new Voice = "singer" \upper }
    \new Lyrics \lyricsto "singer" \text
    \new Staff = lower { \lower }
  >>
  \layout {
    \context {
      \GrandStaff
      \accepts "Lyrics"
    }
    \context {
      \Lyrics
      \consists "Bar_engraver"
    }
  }
  \midi { }
}




% ****************************************************************
% end ly snippet
% ****************************************************************