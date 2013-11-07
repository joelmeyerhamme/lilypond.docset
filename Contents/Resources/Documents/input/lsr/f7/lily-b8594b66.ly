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
\sourcefilename "using-postscript-to-generate-special-note-head-shapes.ly"
\sourcefileline 0
%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.3"

\header {
  lsrtags = "editorial-annotations, tweaks-and-overrides"

  texidocfr = "
Lorsqu'il est impossible d'obtenir facilement une allure particulière
pour les têtes de note en recourant à la technique du @code{\\markup}, un
code Postscript peut vous tirer d'embarras.  Voici comment générer des
têtes ressemblant à des parallélogrammes.

"
  doctitlefr = "Utilisation de Postscript pour générer des têtes de note à l'allure particulière"

  texidoc = "
When a note head with a special shape cannot easily be generated with
graphic markup, PostScript code can be used to generate the shape. 
This example shows how a parallelogram-shaped note head is generated. 

"
  doctitle = "Using PostScript to generate special note head shapes"
} % begin verbatim

parallelogram =
  #(ly:make-stencil (list 'embedded-ps
    "gsave
      currentpoint translate
      newpath
      0 0.25 moveto
      1.3125 0.75 lineto
      1.3125 -0.25 lineto
      0 -0.75 lineto
      closepath
      fill
      grestore" )
    (cons 0 1.3125)
    (cons 0 0))

myNoteHeads = \override NoteHead #'stencil = \parallelogram
normalNoteHeads = \revert NoteHead #'stencil

\relative c'' {
  \myNoteHeads
  g4 d'
  \normalNoteHeads
  <f, \tweak #'stencil \parallelogram b e>4 d
}





% ****************************************************************
% end ly snippet
% ****************************************************************
