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
\sourcefilename "vertically-centering-paired-figured-bass-extenders.ly"
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
Allí donde se utilicen líneas extensoras para el bajo cifrado mediante
el establecimiento de @code{useBassFigureExtenders} al valor
verdadero, las parejas de líneas extensoras congruentes se centran
verticalmente si el valor de @code{figuredBassCenterContinuations}
tiene el valor verdadero.

"
  doctitlees = "Centrado vertical de las líneas de bajo cifrado emparejadas"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
L'activation de la propriété @code{useBassFigureExtenders} permet
d'afficher des lignes de prolongation pour les chiffres qui se répètent.
Deux chiffres prolongés sur la même durée se verront affublés d'un
unique prolongateur, verticalement centré entre eux, dès lors que la
propriété @code{figuredBassCenterContinuations} aura elle aussi été
activée.

"
  doctitlefr = "Prolongateur commun de basse figurée"

  lsrtags = "chords, tweaks-and-overrides"

  texidoc = "
Where figured bass extender lines are being used by setting
@code{useBassFigureExtenders} to true, pairs of congruent figured bass
extender lines are vertically centered if
@code{figuredBassCenterContinuations} is set to true.

"
  doctitle = "Vertically centering paired figured bass extenders"
} % begin verbatim

<<
  \relative c' {
    c8 c b b a a c16 c b b
    c8 c b b a a c16 c b b
    c8 c b b a a c c b b
  }
  \figures {
    \set useBassFigureExtenders = ##t
    <6+ 4 3>4 <6 4 3>8 r
    <6+ 4 3>4 <6 4 3>8 <4 3+>16 r
    \set figuredBassCenterContinuations = ##t
    <6+ 4 3>4 <6 4 3>8 r
    <6+ 4 3>4 <6 4 3>8 <4 3+>16 r
    \set figuredBassCenterContinuations = ##f
    <6+ 4 3>4 <6 4 3>8 r
    <6+ 4 3>4 <6 4 3>8 <4 3+>8
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
