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
\sourcefilename "vertically-aligning-ossias-and-lyrics.ly"
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
Este fragmento de código muestra el uso de las propiedades de
contexto @code{alignBelowContext} y @code{alignAboveContext} para
controlar la posición de la letra y los compases de ossia.

"
  doctitlees = "Alineación vertical de la letra y los compases de ossia"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Questo frammento mostra come usare le proprietà di contesto
@code{alignBelowContext} e @code{alignAboveContext} per
controllare il posizionamento del testo vocale e degli ossia.

"
  doctitleit = "Allineare verticalmente gli ossia e il testo vocale"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Dieser Schnipsel zeigt, wie man die Kontexteigenschaften
@code{alignBelowContext} und @code{alignAboveContext} benutzen kann, um
die Positionierung von Gesangstext und Ossia-Abschnitten zu kontrollieren.

"
  doctitlede = "Gesangstext und Ossia vertikal ausrichten"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Cet exemple illustre la manière de positionner une portée d'ossia et
des paroles à l'aide des propriétés de contexte @code{alignBelowContext}
et @code{alignAboveContext}.

"
  doctitlefr = "Positionnement d'une ossia et des paroles"

  lsrtags = "spacing, tweaks-and-overrides, vocal-music"

  texidoc = "
This snippet demonstrates the use of the context properties
@code{alignBelowContext} and @code{alignAboveContext} to control the
positioning of lyrics and ossias.

"
  doctitle = "Vertically aligning ossias and lyrics"
} % begin verbatim

\paper {
  ragged-right = ##t
}

\relative c' <<
  \new Staff = "1" { c4 c s2 }
  \new Staff = "2" { c4 c s2 }
  \new Staff = "3" { c4 c s2 }
  { \skip 2
    <<
      \lyrics {
        \set alignBelowContext = #"1"
        lyrics4 below
      }
      \new Staff \with {
        alignAboveContext = #"3"
        fontSize = #-2
        \override StaffSymbol.staff-space = #(magstep -2)
        \remove "Time_signature_engraver"
      } {
        \tuplet 6/4 {
          \override TextScript.padding = #3
          c8[^"ossia above" d e d e f]
        }
      }
    >>
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
