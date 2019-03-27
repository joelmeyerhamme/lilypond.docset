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
\sourcefilename "changing-the-tuplet-number.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: c174139b36102ad0e0997bbcce20175dec772a71
  doctitlees = "Cambiar el número del grupo especial"
  texidoces = "
De forma predeterminada sólo se imprime sobre el corchete de grupo el
numerador del grupo especial, o sea, el numerador del argumento de la instrucción
@code{\\tuplet}.

De forma alternativa, se puede imprimr
un quebrado en la forma numerador:denominador del número del grupo, o
eliminar el número.

"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Di norma compare sulla parentesi del gruppo irregolare solo il
numeratore del numero del gruppo irregolare, ovvero il numeratore
dell'argomento del comando @code{\\tuplet}. Ma è possibile
mostrare la frazione num:den del numero del gruppo irregolare
oppure nascondere del tutto il numero.

"
  doctitleit = "Modifica del numero del gruppo irregolare"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Standardmäßig wird nur der Zähler des N-tolen-Bruchs über der Klammer
dargestellt, wie er dem @code{\\times}-Befehl übergeben wird.
Man kann aber auch Zähler/Nenner ausgeben lassen, oder die Zahl
vollständig unterdrücken.

"
  doctitlede = "Die Zahl der N-tole verändern"



%% Translation of GIT committish: c5f6541667b71037c4965b482a8161628c7cc485
  texidocfr = "
LilyPond imprime par défaut le numérateur de la fraction fournie en
argument à la commande @code{\tuplet} du côté du crochet de n-olet.

Il est toutefois possible d'imprimer la fraction entière
@var{num}:@var{den}, voire de ne rien imprimer du tout.

"
  doctitlefr = "Modifier l'apparence du chiffre de n-olet"

  lsrtags = "rhythms"

  texidoc = "
By default, only the numerator of the tuplet number is printed over the
tuplet bracket, i.e., the numerator of the argument to the
@code{\\tuplet} command.

Alternatively, num:den of the tuplet number may be printed, or the
tuplet number may be suppressed altogether.

"
  doctitle = "Changing the tuplet number"
} % begin verbatim

\relative c'' {
  \tuplet 3/2 { c8 c c }
  \tuplet 3/2 { c8 c c }
  \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 { c8 c c }
  \omit TupletNumber
  \tuplet 3/2 { c8 c c }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
