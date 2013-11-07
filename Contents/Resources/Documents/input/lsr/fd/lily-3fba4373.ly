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
\sourcefilename "rhythmic-slashes.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "rhythms, tweaks-and-overrides"

  texidoc = "
In \"simple\" lead-sheets, sometimes no actual notes are written,
instead only \"rhythmic patterns\" and chords above the measures are
notated giving the structure of a song. Such a feature is for example
useful while creating/transcribing the structure of a song and also
when sharing lead sheets with guitarists or jazz musicians. The
standard support for this using @code{\\repeat percent} is unsuitable
here since the first beat has to be an ordinary note or rest. This
example shows two solutions to this problem, by redefining ordinary
rests to be printed as slashes. (If the duration of each beat is not a
quarter note, replace the @code{r4} in the definitions with a rest of
the appropriate duration). 

"
  doctitle = "Rhythmic slashes"
} % begin verbatim

% Macro to print single slash
rs = {
  \once \override Rest #'stencil = #ly:percent-repeat-item-interface::beat-slash
  \once \override Rest #'thickness = #0.48
  \once \override Rest #'slope = #1.7
  r4
}

% Function to print a specified number of slashes
comp = #(define-music-function (parser location count) ( integer?)
  #{
    \override Rest #'stencil = #ly:percent-repeat-item-interface::beat-slash
    \override Rest #'thickness = #0.48
    \override Rest #'slope = #1.7
    \repeat unfold $count { r4 }
    \revert Rest #'stencil
  #}
)

\score {
  \relative c' {
    c4 d e f |
    \rs \rs \rs \rs |
    \comp #4 |
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************