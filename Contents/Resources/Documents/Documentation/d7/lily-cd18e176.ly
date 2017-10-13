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
\sourcefilename "using-alternative-flag-styles.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: 1010f574a85b40fb70e0b31136e7eb788e4946be
  texidoces = "
Se pueden imprimir estilos alternativos del corchete o gancho de las
corcheas y figuras menores, mediante la sobreescritura de la propiedad
@code{stencil} del objeto @code{Flag}.  Son valores válidos
@code{modern-straight-flag} y @code{old-straight-flag} y 
@code{flat-flag}.

"
  doctitlees = "Uso de estilos alternativos para los corchetes"

%% Translation of GIT committish: d139eb3fc0ee681dac939a0ac4949ba1f4e4d0e3
  texidocfr = "
Une dérogation à la propriété @code{stencil} de l'objet @code{Flag}
permet aux croches et notes de durée inférieure d'adopter une autre
forme de crochet.  Sont disponibles les variantes
@code{modern-straight-flag}, @code{old-straight-flag} et
@code{flat-flag}.

"
  doctitlefr = "Crochets de style alternatif"

  lsrtags = "rhythms, tweaks-and-overrides"

  texidoc = "
Alternative styles of flag on eighth and shorter notes can be displayed
by overriding the @code{stencil} property of @code{Flag}.  Valid values
are @code{modern-straight-flag}, @code{old-straight-flag} and
@code{flat-flag}.

"
  doctitle = "Using alternative flag styles"
} % begin verbatim

testnotes = {
  \autoBeamOff
  c8 d16 c32 d64 \acciaccatura { c8 } d64 r4
}

\score {
  \relative c' {
    \time 2/4
    \testnotes

    \override Flag.stencil = #modern-straight-flag
    \testnotes

    \override Flag.stencil = #old-straight-flag
    \testnotes

    \override Flag.stencil = #flat-flag
    \testnotes

    \revert Flag.stencil
    \testnotes
  }
  \layout {
    indent = 0
    \context {
      \Score
      \override NonMusicalPaperColumn.line-break-permission = ##f
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
