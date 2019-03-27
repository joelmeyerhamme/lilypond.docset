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
\sourcefilename "accordion-discant-symbols.ly"
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
Este fragmento de código ha quedado obsoleto por las instrucciones de
marcado predefinidas, véase @q{Registros de acordeón} en la Referencia
de la notación.  Sin embargo aún es útil como demostración sencilla de
la forma de combinar símbolos: la colocación de los símbolos añadidos
con @code{\\markup} se puede trucar modificando los argumentos de
@code{\\translate-scaled}.  Aquí se usa @code{\\translate-scaled} en
lugar de @code{\\translate} para que el posicionamiento de las partes
de símbolos se adapte a los cambios en @code{font-size}.

"
  doctitlees = "Símbolos de acordeón discanto"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  doctitlede = "Symbole für Akkordeon-Diskantregister"
  texidocde = "
Diskantregister für Akkordeon können mit @code{\\markup} dargestellt werden.
Die vertikale Position der einzelnen Elemente werden mit @code{\\raise}
angepasst.
"

%% Translation of GIT committish: c7c6c948c9b70464f7069354059e5a5a8aad4a5c
  texidocfr = "
Cet extrait de code est rendu obsolète par l'apparition de commandes de
@emph{markup} prédéfinies.  Il reste néanmoins utile à titre d'exemple
sur la manière de combiner des symboles : le positionnement de tels
symboles, ajoutés sous forme de @emph{markups}, s'ajuste à l'aide des
arguments de @code{\\translate-scaled}.  La fonction
@code{\\translate-scaled} est ici préférée à @code{\\translate} parce
qu'elle permet au positionnement des parties symboliques de s'adapter
aux changements de @code{font-size}.

"
  doctitlefr = "Symboles de chant pour accordéon"

  lsrtags = "keyboards, specific-notation, symbols-and-glyphs, workaround"

  texidoc = "
This snippet has been obsoleted by predefined markup commands, see
'Accordion Registers' in the Notation Reference.  It's still useful as
a simple demonstration of how to combine symbols: the placement of the
symbols added with @code{\\markup} can be tweaked by changing the
@code{\\translate-scaled} arguments.  @code{\\translate-scaled} is used
here rather than @code{\\translate} in order to let the positioning of
the symbol parts adapt to changes of @code{font-size}.

"
  doctitle = "Accordion-discant symbols"
} % begin verbatim

discant = \markup {
  \musicglyph "accordion.discant"
}
dot = \markup {
  \musicglyph "accordion.dot"
}

\layout { ragged-right = ##t }

% 16 voets register
accBasson = ^\markup {
  \combine
  \discant
  \translate-scaled #'(0 . 0.5) \dot
}

% een korig 8 en 16 voets register
accBandon = ^\markup {
  \combine
    \discant
    \combine
      \translate-scaled #'(0 . 0.5) \dot
      \translate-scaled #'(0 . 1.5) \dot
}

accVCello = ^\markup {
  \combine
    \discant
    \combine
      \translate-scaled #'(0 . 0.5) \dot
      \combine
        \translate-scaled #'(0 . 1.5) \dot
        \translate-scaled #'(1 . 1.5) \dot
}

% 4-8-16 voets register
accHarmon = ^\markup {
  \combine
    \discant
    \combine
      \translate-scaled #'(0 . 0.5) \dot
      \combine
        \translate-scaled #'(0 . 1.5) \dot
        \translate-scaled #'(0 . 2.5) \dot
}

accTrombon = ^\markup {
  \combine
    \discant
    \combine
      \translate-scaled #'(0 . 0.5) \dot
      \combine
        \translate-scaled #'(0 . 1.5) \dot
        \combine
          \translate-scaled #'(1 . 1.5) \dot
          \translate-scaled #'(-1 . 1.5) \dot
}

% eenkorig 4 en 16 voets register
accOrgan = ^\markup {
  \combine
    \discant
    \combine
      \translate-scaled #'(0 . 0.5) \dot
      \translate-scaled #'(0 . 2.5) \dot
}

accMaster = ^\markup {
  \combine
    \discant
    \combine
      \translate-scaled #'(0 . 0.5) \dot
      \combine
        \translate-scaled #'(0 . 1.5) \dot
        \combine
          \translate-scaled #'(1 . 1.5) \dot
          \combine
            \translate-scaled #'(-1 . 1.5) \dot
            \translate-scaled #'(0 . 2.5) \dot
}

accAccord = ^\markup {
  \combine
    \discant
    \combine
      \translate-scaled #'(0 . 1.5) \dot
      \combine
        \translate-scaled #'(1 . 1.5) \dot
        \combine
          \translate-scaled #'(-1 . 1.5) \dot
          \translate-scaled #'(0 . 2.5) \dot
}

accMusette = ^\markup {
  \combine
    \discant
    \combine
      \translate-scaled #'(0 . 1.5) \dot
      \combine
        \translate-scaled #'(1 . 1.5) \dot
        \translate-scaled #'(-1 . 1.5) \dot
}

accCeleste = ^\markup {
  \combine
    \discant
    \combine
      \translate-scaled #'(0 . 1.5) \dot
      \translate-scaled #'(-1 . 1.5) \dot
}

accOboe = ^\markup {
  \combine
    \discant
    \combine
      \translate-scaled #'(0 . 1.5) \dot
      \translate-scaled #'(0 . 2.5) \dot
}

accClarin = ^\markup {
  \combine
    \discant
    \translate-scaled #'(0 . 1.5) \dot
}

accPiccolo = ^\markup {
    \combine
       \discant
       \translate-scaled #'(0 . 2.5) \dot
}

accViolin = ^\markup {
  \combine
    \discant
    \combine
      \translate-scaled #'(0 . 1.5) \dot
      \combine
        \translate-scaled #'(1 . 1.5) \dot
        \translate-scaled #'(0 . 2.5) \dot
}

\relative c'' {
  c4 d\accBasson e f
  c4 d\accBandon e f
  c4 d\accVCello e f
  c4 d\accHarmon e f
  c4 d\accTrombon e f
  \break
  c4 d\accOrgan e f
  c4 d\accMaster e f
  c4 d\accAccord e f
  c4 d\accMusette e f
  c4 d\accCeleste e f
  \break
  c4 d\accOboe e f
  c4 d\accClarin e f
  c4 d\accPiccolo e f
  c4 d\accViolin e f
}



% ****************************************************************
% end ly snippet
% ****************************************************************