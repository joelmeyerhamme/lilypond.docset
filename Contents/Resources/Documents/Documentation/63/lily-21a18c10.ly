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
\sourcefilename "changing-the-breath-mark-symbol.ly"
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
El glifo de la marca de respiración se puede ajustar
sobreescribiendo la propiedad de texto del objeto de presentación
@code{BreathingSign}, con cualquier otro texto de marcado.

"
  doctitlees = "Cambiar el símbolo de la marca de respiración"

%% Translation of GIT committish: deb35a2aef8348478d89a6440ace17fd53b3434f
  texidocit = "
Il glifo del respiro può essere modificato sovrascrivendo la proprietà
@code{text} dell'oggetto di formattazione @code{BreathingSign} con
qualsiasi testo incluso in un blocco markup.

"
  doctitleit = "Cambiare il simbolo del segno di respiro"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Das Schriftzeichen für das Atemzeichen kann verändert werden, indem
die Text-Eigenschaft des @code{BreathingSign}-Layoutobjekts mit einer
beliebigen Textbeschriftung definiert wird.

"
  doctitlede = "Das Atemzeichen-Symbol verändern"

%% Translation of GIT committish: c7c6c948c9b70464f7069354059e5a5a8aad4a5c
  texidocfr = "
On peut choisir le glyphe imprimé par cette commande, en modifiant la
propriété @code{text} de l'objet @code{BreathingSign}, pour lui affecter
n'importe quelle indication textuelle.

"
  doctitlefr = "Modification de l'indicateur de respiration"

  lsrtags = "expressive-marks"

  texidoc = "
The glyph of the breath mark can be tuned by overriding the @code{text}
property of the @code{BreathingSign} layout object with any markup
text.

"
  doctitle = "Changing the breath mark symbol"
} % begin verbatim

\relative c'' {
  c2
  \override BreathingSign.text =
    \markup { \musicglyph "scripts.rvarcomma" }
  \breathe
  d2
}



% ****************************************************************
% end ly snippet
% ****************************************************************
