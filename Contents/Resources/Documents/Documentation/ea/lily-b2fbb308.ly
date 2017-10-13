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
\sourcefilename "modifying-default-values-for-articulation-shorthand-notation.ly"
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
Las abreviaturas se encuentran definidas dentro del archivo
@file{ly/script-init.ly}, donde las variables @code{dashHat},
@code{dashPlus}, @code{dashDash}, @code{dashBar}, @code{dashLarger},
@code{dashDot} y @code{dashUnderscore} reciben valores
predeterminados.  Se pueden modificar estos valores predeterminados
para las abreviaturas. Por ejemplo, para asociar la abreviatura
@code{-+} (@code{dashPlus}) con el símbolo del semitrino en lugar del
símbolo predeterminado +, asigne el valor @code{trill} a la variable
@code{dashPlus}:

"
  doctitlees = "Modificar los valores predeterminados para la notación abreviada de las articulaciones"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Le abbreviazioni sono definite in @samp{ly/script-init.ly}, dove sono
assegnati valori predefiniti alle variabili @code{dashHat}, @code{dashPlus},
@code{dashDash}, @code{dashBang}, @code{dashLarger}, @code{dashDot} e
@code{dashUnderscore}.  Questi valori predefiniti possono essere
modificati. Ad esempio, per associare l'abbreviazione @code{-+} (@code{dashPlus})
al simbolo del trillo invece che al simbolo + predefinito, si assegna il
valore @code{trill} alla variabile @code{dashPlus}:

"
  doctitleit = "Modificare i valori predefiniti per le abbreviazioni delle articolazioni"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
 texidocde = "
Die Abkürzungen sind in der Datei @file{ly/script-init.ly} definiert, wo
den Variablen @code{dashHat}, @code{dashPlus}, @code{dashDash},
@code{dashBar}, @code{dashLarger}, @code{dashDot} und
@code{dashUnderscore} Standardwerte zugewiesen werden.  Diese Standardwerte
können verändert werden.  Um zum Beispiel die Abkürzung
@code{-+} (@code{dashPlus}) mit dem Triller anstatt mit dem +-Symbol zu
assoziieren, muss der Wert @code{trill} der Variable
@code{dashPlus} zugewiesen werden:

"
  doctitlede = "Die Standardwerte der Abkürzungen von Artikulationen verändern"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Les raccourcis sont répertoriés dans le fichier
@samp{ly/script-init.ly}, dans lequel on retrouve les variables
@code{dashHat}, @code{dashPlus}, @code{dashDash}, @code{dashBar},
@code{dashLarger}, @code{dashDot} et @code{dashUnderscore} ainsi que
leur valeur par défaut.  Ces valeurs peuvent être modifiées selon vos
besoins.  Il suffit par exemple, pour affecter au raccourci @w{@code{-+}}
(@code{dashPlus}) le symbole du trille en lieu et place du @code{+}
(caractère plus), d'assigner la valeur @code{trill} à la variable
@code{dashPlus} :

"
  doctitlefr = "Modification de la signification des raccourcis pour les signes d'articulation"

  lsrtags = "expressive-marks"

  texidoc = "
The shorthands are defined in @samp{ly/script-init.ly}, where the
variables @code{dashHat}, @code{dashPlus}, @code{dashDash},
@code{dashBar}, @code{dashLarger}, @code{dashDot}, and
@code{dashUnderscore} are assigned default values.  The default values
for the shorthands can be modified. For example, to associate the
@code{-+} (@code{dashPlus}) shorthand with the trill symbol instead of
the default + symbol, assign the value @code{trill} to the variable
@code{dashPlus}:

"
  doctitle = "Modifying default values for articulation shorthand notation"
} % begin verbatim

\relative c'' { c1-+ }

dashPlus = "trill"

\relative c'' { c1-+ }



% ****************************************************************
% end ly snippet
% ****************************************************************
