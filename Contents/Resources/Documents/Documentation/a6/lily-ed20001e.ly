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
\sourcefilename "lyrics-alignment.ly"
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
La alineación horizontal de la letra se puede ajustar sobreescribiendo
la propiedad @code{self-alignment-X} del objeto @code{LyricText}.
@code{#-1} es izquierda, @code{#0} es centrado y @code{#1} es derecha;
sin embargo, podemos usar también @code{#LEFT}, @code{#CENTER} y
@code{#RIGHT}.

"
  doctitlees = "Alineación de la letra"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "

L'allineamento orizzontale del testo vocale si imposta attraverso la
proprietà @code{self-alignment-X} dell'oggetto @code{LyricText}.
@code{#-1} è sinistra, @code{#0} è centro e @code{#1} è destra;
si possono usare anche @code{#LEFT}, @code{#CENTER} e @code{#RIGHT}.

"
  doctitleit = "Allineamento del testo vocale"

%% Translation of GIT committish: 27b1197f3bae8512c14d946752cd3e40e7c76016

  texidocde = "
Die horizontale Ausrichtung von Gesangstext kann eingestellt werden, indem
man die @code{self-alignment-X}-Eigenschaft des @code{LyricText}-Objekts
verändert.  @code{#-1} bedeutet links, @code{#0} bedeutet mittig und @code{#1}
bedeutet rechts, man kann aber genauso gut auch @code{#LEFT}, @code{#CENTER}
und @code{#RIGHT} benutzen.

"
  doctitlede = "Ausrichtung von Gesangstext"


%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
L'alignement horizontal des paroles peut se gérer à l'aide de la
propriété @code{self-alignment-X} de l'objet @code{LyricText}.
Les valeurs @code{-1} ou @code{LEFT} produiront un alignement par la
gauche, les valeurs @code{0} ou @code{CENTER} un alignement centré, et
les valeurs @code{1} ou @code{RIGHT} un alignement par la droite.

"
  doctitlefr = "Alignement des syllabes"

  lsrtags = "really-simple, text, vocal-music"

  texidoc = "
Horizontal alignment for lyrics can be set by overriding the
@code{self-alignment-X} property of the @code{LyricText} object.
@code{#-1} is left, @code{#0} is center and @code{#1} is right;
however, you can use @code{#LEFT}, @code{#CENTER} and @code{#RIGHT} as
well.

"
  doctitle = "Lyrics alignment"
} % begin verbatim

\layout { ragged-right = ##f }
\relative c'' {
  c1
  c1
  c1
}
\addlyrics {
  \once \override LyricText.self-alignment-X = #LEFT
  "This is left-aligned"
  \once \override LyricText.self-alignment-X = #CENTER
  "This is centered"
  \once \override LyricText.self-alignment-X = #1
  "This is right-aligned"
}



% ****************************************************************
% end ly snippet
% ****************************************************************