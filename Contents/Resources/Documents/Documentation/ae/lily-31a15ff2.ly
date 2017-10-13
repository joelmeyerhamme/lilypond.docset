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
\sourcefilename "putting-lyrics-inside-the-staff.ly"
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
Se pueden mover las líneas de letra verticalmente para imprimirlas
dentro del pentagrama.  Las letras se mueven con @code{\\override
LyricText.extra-offset = #'(0 . dy)} y hay instrucciones similares
para mover las líneas extensoras y los guiones.  El desplazamiento
necesario se establece mediante un proceso de ensayo y error.

"
  doctitlees = "Putting lyrics inside the staff"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Des paroles peuvent venir s'inscrire dans la portée même.  Ces paroles
sont décalées par la dérogation
@w{@code{\\override LyricText.extra-offset = #'(0 . dimension)}} ; des
commandes similaires s'occuperont des extenseurs et des tirets.
Le décalage optimal ne peut s'obtenir qu'en procédant à tâtons.

"
  doctitlefr = "Impression des paroles dans la portée"

  lsrtags = "staff-notation, text, vocal-music"

  texidoc = "
Lyrics can be moved vertically to place them inside the staff.  The
lyrics are moved with @code{\\override LyricText.extra-offset = #'(0 .
dy)} and there are similar commands to move the extenders and hyphens.
The offset needed is established with trial and error.

"
  doctitle = "Putting lyrics inside the staff"
} % begin verbatim

<<
  \new Staff <<
    \new Voice = "voc" \relative c' { \stemDown a bes c8 b c4 }
  >>
  \new Lyrics \with {
    \override LyricText.extra-offset = #'(0 . 8.6)
    \override LyricExtender.extra-offset = #'(0 . 8.6)
    \override LyricHyphen.extra-offset = #'(0 . 8.6)
  } \lyricsto "voc" { La la -- la __ _ la }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************