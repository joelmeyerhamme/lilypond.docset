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
\sourcefilename "creating-a-sequence-of-notes-on-various-pitches.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.19.22
\version "2.19.22"

\header {
%% Translation of GIT committish: e115f1949f9f63d5faee3369fbf2094c54966f9f
  texidoces = "
En una música que tenga muchas apariciones de la
misma secuencia de notas a distintas alturas, podría ser de
utilidad la siguiente función musical.  Admite una nota, de la que
sólo se utiliza su altura.  Las funciones de apoyo en Scheme se
han tomado prestadas del documento de \"Consejos y trucos\"de la
versión 2.10 del manual.  Este ejemplo crea las duraciones
rítmicas que se usan a todo lo largo de «Marte», de «Los Planetas»
de Gustav Holst.

"
  doctitlees = "Crear una secuencia de notas a distintas alturas"

%% Translation of GIT committish: f7a3d8cf31367398a1955c50d3c42216d8940989
  texidocfr = "
Lorsque la musique comporte à de nombreuses reprises une même séquence
sur des hauteurs différentes, la fonction musicale ci-dessous peut
s'avérer fort utile.  Elle considère une note dont seule la hauteur est
utilisée.  Cet exemple reproduit le rythme utilisé tout au long de
« Mars », l'une des pièces de l'œuvre de Gustav Holst « Les planètes ».

"
  doctitlefr = "Création d'une séquence de notes de même hauteur"

  lsrtags = "pitches, real-music, really-cool, scheme-language"

  texidoc = "
In music that contains many occurrences of the same sequence of notes
at different pitches, the following music function may prove useful.
It takes a note, of which only the pitch is used.   This example
creates the rhythm used throughout Mars, from Gustav Holst's The
Planets.

"
  doctitle = "Creating a sequence of notes on various pitches"
} % begin verbatim


rhythm =
#(define-music-function (p) (ly:pitch?)
   "Make the rhythm in Mars (the Planets) at the given pitch"
  #{ \tuplet 3/2 { $p 8 8 8 } 4 4 8 8 4 #})

\new Staff {
  \time 5/4
  \rhythm c'
  \rhythm c''
  \rhythm g
}



% ****************************************************************
% end ly snippet
% ****************************************************************