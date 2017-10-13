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
\sourcefilename "using-the--tweak-command-to-tweak-individual-grobs.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "tweaks-and-overrides"

  texidoc = "
With the @code{\\tweak} command, every grob can be tuned directly. 
Here are some examples of available tweaks.

"
  doctitle = "Using the \\tweak command to tweak individual grobs"
} % begin verbatim

\relative c' {
  \time 2/4
  \set fingeringOrientations = #'(right)
  <
    \tweak #'font-size #3 c
    \tweak #'color #red d-\tweak #'font-size #8 -4
    \tweak #'style #'cross g
    \tweak #'duration-log #2 a
  >2
}




% ****************************************************************
% end ly snippet
% ****************************************************************