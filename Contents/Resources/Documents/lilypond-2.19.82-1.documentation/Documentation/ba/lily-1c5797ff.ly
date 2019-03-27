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
\sourcefilename "adding-drum-parts.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.19.56
\version "2.19.56"

\header {
%% Translation of GIT committish: 3f57efa0cde39bf0642fb6fb3672a19262ceda83
  texidoces = "
Mediante la utilización de las potentes herramientas preconfiguradas
como la función @code{\\drummode} y el contexto @code{DrumStaff}, la
introducción de partes para percusión es muy fácil: las percusiones se
sitúan en sus propias posiciones de pentagrama (con una clave
especial) y tienen las cabezas correspondientes al instrumento.  Es
posible añadir un símbolo adicional a la percusión o reducir el número
de líneas.

"
  doctitlees = "Escritura de partes de percusión"

%% Translation of GIT committish: de694eef021e3c38119b08370f79809bffc52a9b
  texidocfr = "
Grâce à la puissance des outils préconfigurés tels que la fonction
@code{\\drummode} et le contexte @code{DrumStaff}, la saisie de parties
pour percussions est extrêmement simplifiée : chaque composant d'une
batterie trouve sa place sur une portée dédiée (avec une clef
particulière) et les têtes de note sont spécifiques à chaque élément.
Il est également possible d'affecter un symbole particulier à chaque
élément, tout comme de restreindre le nombre de lignes de la portée.

"
  doctitlefr = "Ajout de parties de batterie"

  lsrtags = "percussion, preparing-parts, really-simple, rhythms, specific-notation"

  texidoc = "
Using the powerful pre-configured tools such as the @code{\\drummode}
function and the @code{DrumStaff} context, inputting drum parts is
quite easy: drums are placed at their own staff positions (with a
special clef symbol) and have note heads according to the drum.
Attaching an extra symbol to the drum or restricting the number of
lines is possible.

"
  doctitle = "Adding drum parts"
} % begin verbatim

drh = \drummode {
        cymc4.^"crash" hhc16^"h.h." hh hhc8 hho hhc8 hh16 hh
        hhc4 r4 r2
      } % begin verbatim

drl = \drummode {
        bd4 sn8 bd bd4 << bd ss >>
        bd8 tommh tommh bd toml toml bd tomfh16 tomfh
      }
timb = \drummode {
         timh4 ssh timl8 ssh r timh r4
         ssh8 timl r4 cb8 cb
       }

\score {
  <<
    \new DrumStaff \with {
      instrumentName = #"timbales"
      drumStyleTable = #timbales-style
      \override StaffSymbol.line-count = #2
      \override BarLine.bar-extent = #'(-1 . 1)
    }
    <<
      \timb
    >>
    \new DrumStaff \with { instrumentName = #"drums" }
    <<
      \new DrumVoice { \stemUp \drh }
      \new DrumVoice { \stemDown \drl }
    >>
  >>
  \layout { }
  \midi { \tempo 4 = 120 }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
