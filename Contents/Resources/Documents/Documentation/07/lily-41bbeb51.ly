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
\sourcefilename "how-to-print-two-rehearsal-marks-above-and-below-the-same-barline-method-1.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: 262abf17c7827e88e3d509100c43920c8e225bec
  texidoces = "
Este método imprime dos letras de ensayo, una encima de la otra,
desplaza la marca inferior a una posición debajo del pentagrama y
después añade un relleno sobre ella de forma que la marca superior se
sitúe encima del pentagrama.

Ajustando los valores de extra-offset y de baseline-skip podemos
aumentar o disminuir el espacio total entre la marca de ensayo y el
pentagrama.

Debido a que puede hacrse que prácticamente cualquier tipo de glifo o
cadena de caracteres se comporte como una marca de ensayo, es posible
centrarlas encima y debajo de una barra de compás.

Añadiendo la propiedad 'break visibility' (visibilidad en caso de
salto) adecuada como se muestra en el ejemplo número 1, podemos
también posicionar las dos marcas al final de una línea.

Nota: el método 1 es menos complejo que el método 2 pero realmente no
permite un ajuste fino de la colocación de una de las marcas de ensayo
sin afectar a la otra.  También puede dar algunos problemas con el
espaciado vertical, porque el uso de @code{extra-offset} no cambia la
caja circundante de la letra de ensayo desde su valor original.

"
  doctitlees = "Cómo imprimir dos letras de ensayo encima y debajo de la misma línea divisoria (método 1)"

%% Translation of GIT committish: c5f6541667b71037c4965b482a8161628c7cc485
  texidocfr = "
Cette méthode permet d'imprimer deux marques-repères l'une au-dessus de
l'autre.  Le repère inférieur est décalé sous la portée, puis s'insère
au-dessus de lui un espace pour positionner le repère supérieur
en surplomb de la portée.

L'ajustement des valeurs de @code{extra-offset} et @code{baseline-skip}
permet d'accroître ou réduire globalement l'espace entre le repère et la
portée.

La capacité de pratiquement tout type de glyphe ou chaîne de caractères
à faire l'objet d'un repère les rend capable de venir se centrer
au-dessus ou en dessous d'une barre de mesure.

L'adjonction de la propriété @code{break-visibility}, comme dans le
troisième cas, permet de placer un double repère en fin de ligne.

Cette première méthode, bien que moins compliquée que la seconde, ne
permet pas d'ajuster le positionnement d'un repère indépendamment de
l'autre.  Elle peut aussi générer quelques problèmes quant à
l'espacement vertical, puisque le recours à @code{extra-offset} ne
modifie en rien la valeur originelle de la boîte englobant le repère.

"
  doctitlefr = "Impression d'un double repère sur une même barre (méthode 1)"

  lsrtags = "editorial-annotations, expressive-marks, staff-notation, tweaks-and-overrides"

  texidoc = "
This method prints two 'rehearsal marks', one on top of the other. It
shifts the lower rehearsal mark below the staff and then adds padding
above it in order to place the upper rehearsal mark above the staff.

By adjusting the extra-offset and baseline-skip values you can increase
or decrease the overall space between the rehearsal mark and the staff.

Because nearly every type of glyph or string can be made to behave like
a rehearsal mark it is possible to centre those above and below a bar
line.

Adding the appropriate 'break visibility' as shown in snippet 1 will
allow you to position two marks at the end of a line as well.

Note: Method 1 is less complex than Method 2 but does not really allow
for fine tuning of placement of one of the rehearsal marks without
affecting the other.  It may also give some problems with vertical
spacing, since using @code{extra-offset} does not change the bounding
box of the mark from its original value.

"
  doctitle = "How to print two rehearsal marks above and below the same barline (method 1)"
} % begin verbatim

\relative c'{
  c d e f |
  \once \override Score.RehearsalMark.extra-offset = #'(0 . -8.5)
  \once \override Score.RehearsalMark.baseline-skip = #9
  \mark \markup \center-column { \circle 1 \box A }
  g f e d |
  \once \override Score.RehearsalMark.extra-offset = #'(0 . -8.5)
  \once \override Score.RehearsalMark.baseline-skip = #9
  \mark \markup \center-column { \flat { \bold \small \italic Fine. } }
  g f e d |
  \once \override Score.RehearsalMark.extra-offset = #'(0 . -8.5)
  \once \override Score.RehearsalMark.baseline-skip = #9
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark \markup \center-column { \fermata \box z }
}



% ****************************************************************
% end ly snippet
% ****************************************************************