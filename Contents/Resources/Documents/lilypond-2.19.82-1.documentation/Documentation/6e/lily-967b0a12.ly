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
\sourcefilename "non-default-tuplet-numbers.ly"
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
LilyPond también proporciona funciones de formato para imprimir
números de grupo especial diferentes a la propia fracción, así
como para añadir una figura al número o a la fracción de la
agrupación.

"
  doctitlees = "Números de agrupación especial distintos a los predeterminados"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
LilyPond fornisce anche funzioni di formattazione che permettono di creare
numeri di gruppi irregolari diversi dalla frazione vera e propria, così come
di aggiungere un valore di nota al numero o alla frazione di un gruppo
irregolare.

"
  doctitleit = "Numeri non predefiniti per i gruppi irregolari"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
LilyPond stellt auch Formatierungsfunktionen zur Verfügung, mit denen
N-tolennummern gesetzt werden können, die sich von dem eigentlichen Bruch
unterscheiden.  Auch ein Notenwert kann zu Nenner oder Zähler des Bruchs
hinzugefügt werden.
"
  doctitlede = "Nicht-standard-N-tolennummern"


%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
LilyPond sait aussi gérer des n-olets dont le chiffrage imprimé ne
correspond pas exactement à la fraction de mesure à laquelle ils se
réfèrent, tout comme ceux auxquels une valeur de note vient en
complément du chiffre.

"
  doctitlefr = "N-olets au chiffrage inhabituel"

  lsrtags = "rhythms"

  texidoc = "
LilyPond also provides formatting functions to print tuplet numbers
different than the actual fraction, as well as to append a note value
to the tuplet number or tuplet fraction.

"
  doctitle = "Non-default tuplet numbers"
} % begin verbatim

\relative c'' {
  \once \override TupletNumber.text =
    #(tuplet-number::non-default-tuplet-denominator-text 7)
  \tuplet 3/2  { c4. c4. c4. c4. }
  \once \override TupletNumber.text =
    #(tuplet-number::non-default-tuplet-fraction-text 12 7)
  \tuplet 3/2  { c4. c4. c4. c4. }
  \once \override TupletNumber.text =
    #(tuplet-number::append-note-wrapper
      (tuplet-number::non-default-tuplet-fraction-text 12 7) "8")
  \tuplet 3/2  { c4. c4. c4. c4. }
  \once \override TupletNumber.text =
    #(tuplet-number::append-note-wrapper
      tuplet-number::calc-denominator-text "4")
  \tuplet 3/2  { c8 c8 c8 c8 c8 c8 }
  \once \override TupletNumber.text =
    #(tuplet-number::append-note-wrapper
      tuplet-number::calc-fraction-text "4")
  \tuplet 3/2  { c8 c8 c8 c8 c8 c8 }
  \once \override TupletNumber.text =
    #(tuplet-number::fraction-with-notes "4." "8")
  \tuplet 3/2  { c4. c4. c4. c4. }
  \once \override TupletNumber.text =
    #(tuplet-number::non-default-fraction-with-notes 12 "8" 4 "4")
  \tuplet 3/2  { c4. c4. c4. c4. }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
