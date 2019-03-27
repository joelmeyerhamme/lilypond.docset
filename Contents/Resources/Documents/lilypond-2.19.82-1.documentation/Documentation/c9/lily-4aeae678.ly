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
\sourcefilename "changing-fret-orientations.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: 8ffecf6be17c6ec2ff87cf31873121a8cce29b09
  texidoces = "
Los diagramas de posiciones de acordes se pueden orientar de tres
formas.  De manera predeterminada se alinena la cuerda o traste
superior en las distintas alineaciones.

"
  doctitlees = "Modificar la orientación de los trastes"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Les diagrammes de fret peuvent s'orienter de trois manières différentes.
Ils s'aligneront par défaut sur la corde du haut ou le sommet du fret.

"
  doctitlefr = "Orientation des diagrammes de fret"

  lsrtags = "fretted-strings"

  texidoc = "
Fret diagrams can be oriented in three ways.  By default the top string
or fret in the different orientations will be aligned.

"
  doctitle = "Changing fret orientations"
} % begin verbatim

\include "predefined-guitar-fretboards.ly"

<<
  \chords {
    c1
    c1
    c1
  }
  \new FretBoards {
    \chordmode {
      c1
      \override FretBoard.fret-diagram-details.orientation =
        #'landscape
      c1
      \override FretBoard.fret-diagram-details.orientation =
        #'opposing-landscape
      c1
    }
  }
  \new Voice {
    c'1
    c'1
    c'
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
