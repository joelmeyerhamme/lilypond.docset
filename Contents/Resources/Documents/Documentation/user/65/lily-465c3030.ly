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
\sourcefilename "piano-template-with-centered-dynamics.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "expressive-marks, keyboards, template"

  texidoces = "
Muchas partituras de piano tienen las indicaciones dinámicas
centradas entre los dos pentagramas.  Esto requiere un poco de
trucaje, pero puesto que la plantilla está aquí mismo, no tenemos
que hacer este trucaje por nuestra cuenta.

"
  doctitlees = "Plantilla de piano con matices centrados"
  
  texidocde = "
In der meisten Klaviernotation werden die Dynamikzeichen zwischen 
den beiden Systemen zentriert. Für LilyPond muss man die Einstellungen 
etwas anpassen, aber Sie können ja das angepasste Beispiel von hier 
kopieren.
"

  texidoc = "
Many piano scores have the dynamics centered between the two staves.
This requires a bit of tweaking to implement, but since the template is
right here, you don't have to do the tweaking yourself.

"
  doctitle = "Piano template with centered dynamics"
} % begin verbatim

global = {
  \key c \major
  \time 4/4
}

upper = \relative c'' {
  \clef treble
  a4 b c d
}

lower = \relative c {
  \clef bass
  a2 c
}

dynamics = {
  s2\fff\> s4 s\!\pp
}

pedal = {
  s2\sustainOn s\sustainOff
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \new Staff = "Staff_pfUpper" << \global \upper >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "Staff_pfLower" << \global \lower >>
    \new Dynamics = "pedal" \pedal
  >>

  \layout {
    % define Dynamics context
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice
      \consists "Output_property_engraver"
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "New_dynamic_engraver"
      \consists "Dynamic_align_engraver"
      \consists "Text_engraver"
      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"

      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")
      \override DynamicLineSpanner #'Y-offset = #0
      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
    % modify PianoStaff context to accept Dynamics context
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \new Staff = "Staff_pfUpper" << \global \upper \dynamics \pedal >>
    \new Staff = "Staff_pfLower" << \global \lower \dynamics \pedal >>
  >>
  \midi { }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
