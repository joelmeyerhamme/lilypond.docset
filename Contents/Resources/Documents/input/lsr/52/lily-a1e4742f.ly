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
\sourcefilename "separating-key-cancellations-from-key-signature-changes.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "pitches, tweaks-and-overrides"

  texidoc = "
By default, the accidentals used for key cancellations are placed
adjacent to those for key signature changes.  This behavior can be
changed by overriding the @code{'break-align-orders} property of the
@code{BreakAlignment} grob.


The value of @code{'break-align-orders} is a vector of length 3, with
quoted lists of breakable items as elements.  This example only
modifies the second list, moving @code{key-cancellation} before
@code{staff-bar}; by modifying the second list, break alignment
behavior only changes in the middle of a system, not at the beginning
or the end. 

"
  doctitle = "Separating key cancellations from key signature changes"
} % begin verbatim

\new Staff {
  \override Score.BreakAlignment #'break-align-orders =
    #'#((left-edge ambitus breathing-sign clef staff-bar
                   key-cancellation key-signature time-signature custos)
      
        (left-edge ambitus breathing-sign clef key-cancellation
                   staff-bar key-signature time-signature custos)
      
        (left-edge ambitus breathing-sign clef key-cancellation
                   key-signature staff-bar time-signature custos))

  \key des \major
  c'1
  \bar "||"
  \key bes \major
  c'1
}



% ****************************************************************
% end ly snippet
% ****************************************************************