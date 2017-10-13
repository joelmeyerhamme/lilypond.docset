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
\sourcefilename "volta-text-markup-using-repeatcommands.ly"
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
Aunque las casillas de repetición se especifican de forma óptima
usando @code{\\repeat volta}, debe usarse la propiedad de contexto
@code{repeatCommands} en caso de que el texto de la casilla requiera
un formato más avanzado con @code{\\markup}.


Puesto que @code{repeatCommands} admite una lista, el método más
sencillo de incluir elementos de marcado es usar un identificador para
el texto e insertarlo en la lista de instrucciones usando la sintaxis
de Scheme @code{#(list (list 'volta textIdentifier))}.  Las
instrucciones de principio y fin de repetición se pueden añadir como
elementos de lista independientes:

"
  doctitlees = "Elementos de marcado para el texto de las casillas de repetición usando repeatCommands"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
La commande @code{\\repeat volta} permet d'indiquer facilement des
reprises.  Il est certains cas où l'adjonction d'un texte sous forme de
@code{\markup} nécessite cependant de recourir à la propriété de
contexte @code{repeatCommands}.

Dans la mesure où l'argument de @code{repeatCommands} est constitué
d'une liste, le plus simple est de définir le texte dans une variable
qui sera ensuite incorporée dans la liste en respectant la syntaxe Scheme
@code{#(list (list 'volta texteIdentificateur))}.  Les commandes de
début et de fin de reprise peuvent s'ajouter séparément à la liste des
éléments.

"
  doctitlefr = "Indication de reprise avec texte grâce à repeatCommands"

  lsrtags = "repeats, symbols-and-glyphs, text"

  texidoc = "
Though volte are best specified using @code{\\repeat volta}, the
context property @code{repeatCommands} must be used in cases where the
volta text needs more advanced formatting with @code{\\markup}.


Since @code{repeatCommands} takes a list, the simplest method of
including markup is to use an identifier for the text and embed it in
the command list using the Scheme syntax @code{#(list (list 'volta
textIdentifier))}. Start- and end-repeat commands can be added as
separate list elements:

"
  doctitle = "Volta text markup using repeatCommands"
} % begin verbatim

voltaAdLib = \markup { 1. 2. 3... \text \italic { ad lib. } }

\relative c'' {
  c1
  \set Score.repeatCommands = #(list (list 'volta voltaAdLib) 'start-repeat)
  c4 b d e
  \set Score.repeatCommands = #'((volta #f) (volta "4.") end-repeat)
  f1
  \set Score.repeatCommands = #'((volta #f))
}



% ****************************************************************
% end ly snippet
% ****************************************************************
