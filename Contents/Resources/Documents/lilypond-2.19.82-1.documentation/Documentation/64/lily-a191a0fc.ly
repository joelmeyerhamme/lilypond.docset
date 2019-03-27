%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote,ragged-right]
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
  ragged-right = ##t
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "printing-marks-on-every-staff.ly"
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
Aunque normalmente las marcas de ensayo textuales sólo se imprimen
sobre el pentagrama superior, también se pueden imprimir en otro
pentagrama cualquiera.

"
  doctitlees = "Imprimir marcas de ensayo en cualquier pentagrama"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Sebbene le indicazioni testuali siano di norma collocate solo sopra il
rigo più alto, è possibile farle apparire su ogni rigo.
"
  doctitleit = "Stampare le indicazioni su ogni rigo"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Normalerweise werden Textzeichen nur über dem obersten Notensystem gesetzt.  Sie
können aber auch über jedem System ausgegeben werden.

"
  doctitlede = "Zeichen über jedem System ausgeben"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Bien que ces indications textuelles ne soient habituellement imprimées
qu'au niveau de la portée supérieure d'un système, leur affectation peut
être répecutée à chacune des portées.

"
  doctitlefr = "Impression des indications sur toutes les portées d'un système"

  lsrtags = "text"

  texidoc = "
Although text marks are normally only printed above the topmost staff,
they may also be printed on every staff.

"
  doctitle = "Printing marks on every staff"
} % begin verbatim

\score {
  <<
    \new Staff { c''1 \mark "molto" c'' }
    \new Staff { c'1 \mark "molto" c' }
  >>
  \layout {
    \context {
      \Score
      \remove "Mark_engraver"
      \remove "Staff_collecting_engraver"
    }
    \context {
      \Staff
      \consists "Mark_engraver"
      \consists "Staff_collecting_engraver"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************