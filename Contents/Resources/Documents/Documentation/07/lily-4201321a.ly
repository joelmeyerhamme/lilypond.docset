%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "embedding-native-postscript-in-a--markup-block.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.19.80"

\header {
%% Translation of GIT committish: a089ca62fd9b3770a932061207262fe81063dc56
  texidoces = "
Se puede insertar códico PostScript directamente dentro de un
bloque @code{\\markup}.

"
  doctitlees = "Empotrar PostScript nativo dentro de un bloque \\markup"

%% Translation of GIT committish: c7c6c948c9b70464f7069354059e5a5a8aad4a5c
  texidocfr = "
Du code PostScript peut directement être intégré dans un bloc
@code{\\markup}.

"
  doctitlefr = "Intégration de PostScript dans un markup"

  lsrtags = "editorial-annotations, really-cool, specific-notation, text"

  texidoc = "
PostScript code can be directly inserted inside a @code{\\markup}
block.

"
  doctitle = "Embedding native PostScript in a \\markup block"
} % begin verbatim

% PostScript is a registered trademark of Adobe Systems Inc.

\relative c'' {
  a4-\markup { \postscript "3 4 moveto 5 3 rlineto stroke" }
  -\markup { \postscript "[ 0 1 ] 0 setdash 3 5 moveto 5 -3 rlineto stroke " }

  b4-\markup { \postscript "3 4 moveto 0 0 1 2 8 4 20 3.5 rcurveto stroke" }
  s2
  a'1
}



% ****************************************************************
% end ly snippet
% ****************************************************************
