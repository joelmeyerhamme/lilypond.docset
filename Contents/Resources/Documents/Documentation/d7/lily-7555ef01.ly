%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote]
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
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "customizing-markup-fret-diagrams.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.19.80"

\header {
%% Translation of GIT committish: 8ffecf6be17c6ec2ff87cf31873121a8cce29b09
  texidoces = "
Se pueden establecer las propiedades de los diagramas de
posiciones a través de @code{'fret-diagram-details}.  Para los
diagramas de posiciones de marcado, se pueden aplicar overrides
(sobreescrituras) al objeto @code{Voice.TextScript} o directamente al elemento de marcado.

"
  doctitlees = "Personalizar diagramas de posiciones de marcado"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Bunddiagramme können mit der Eigenschaft @code{'fret-diagram-details}
angepasst werden.  Bunddiagramme, die als Textbeschriftung eingefügt werden,
können Veränderungen im @code{Voice.TextScript}-Objekt oder direkt in der
Beschriftung vorgenommen werden.

"
  doctitlede = "Anpassung von Beschriftungs-Bunddiagrammen"

%% Translation of GIT committish: c7c6c948c9b70464f7069354059e5a5a8aad4a5c
  texidocfr = "
Les propriétés d'un diagramme de fret sont modifiables grâce au
@code{fret-diagram-details}.  Lorsqu'ils sont générés sous forme
de @code{\markup}, rien n'empêche de modifier les diagrammes en jouant
sur les réglages de l'objet @code{Voice.TextScript} ou bien directement
sur le @emph{markup}.

"
  doctitlefr = "Personnalisation des diagrammes de fret"

  lsrtags = "fretted-strings, tweaks-and-overrides"

  texidoc = "
Fret diagram properties can be set through
@code{'fret-diagram-details}.  For markup fret diagrams, overrides can
be applied to the @code{Voice.TextScript} object or directly to the
markup.

"
  doctitle = "Customizing markup fret diagrams"
} % begin verbatim

<<
  \chords { c1 | c | c | d }

  \new Voice = "mel" {
    \textLengthOn
    % Set global properties of fret diagram
    \override TextScript.size = #'1.2
    \override TextScript.fret-diagram-details.finger-code = #'in-dot
    \override TextScript.fret-diagram-details.dot-color = #'white

    %% C major for guitar, no barre, using defaults
       % terse style
    c'1^\markup { \fret-diagram-terse "x;3-3;2-2;o;1-1;o;" }

    %% C major for guitar, barred on third fret
       % verbose style
       % size 1.0
       % roman fret label, finger labels below string, straight barre
    c'1^\markup {
      % standard size
      \override #'(size . 1.0) {
        \override #'(fret-diagram-details . (
                     (number-type . roman-lower)
                     (finger-code . in-dot)
                     (barre-type . straight))) {
          \fret-diagram-verbose #'((mute 6)
                                   (place-fret 5 3 1)
                                   (place-fret 4 5 2)
                                   (place-fret 3 5 3)
                                   (place-fret 2 5 4)
                                   (place-fret 1 3 1)
                                   (barre 5 1 3))
        }
      }
    }

    %% C major for guitar, barred on third fret
       % verbose style
       % landscape orientation, arabic numbers, M for mute string
       % no barre, fret label down or left, small mute label font
    c'1^\markup {
      \override #'(fret-diagram-details . (
                   (finger-code . below-string)
                   (number-type . arabic)
                   (label-dir . -1)
                   (mute-string . "M")
                   (orientation . landscape)
                   (barre-type . none)
                   (xo-font-magnification . 0.4)
                   (xo-padding . 0.3))) {
        \fret-diagram-verbose #'((mute 6)
                                 (place-fret 5 3 1)
                                 (place-fret 4 5 2)
                                 (place-fret 3 5 3)
                                 (place-fret 2 5 4)
                                 (place-fret 1 3 1)
                                 (barre 5 1 3))
      }
    }

    %% simple D chord
       % terse style
       % larger dots, centered dots, fewer frets
       % label below string
    d'1^\markup {
      \override #'(fret-diagram-details . (
                   (finger-code . below-string)
                   (dot-radius . 0.35)
                   (dot-position . 0.5)
                   (fret-count . 3))) {
        \fret-diagram-terse "x;x;o;2-1;3-2;2-3;"
      }
    }
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
