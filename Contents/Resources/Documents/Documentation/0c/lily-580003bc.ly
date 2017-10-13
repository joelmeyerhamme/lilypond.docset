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
\sourcefilename "changing-the-number-of-lines-in-a-staff.ly"
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
El número de líneas de una pauta se puede modificar sobreescribiendo
la propiedad @code{line-count} del objeto @code{StaffSymbol}.

"
  doctitlees = "Cambiar el número de líneas de una pauta"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Le nombre de lignes d'un portée se modifie par adaptation de la
propriété @code{line-count} du @code{StaffSymbol}.

"
  doctitlefr = "Modification du nombre de lignes de la portée"

  lsrtags = "specific-notation, staff-notation"

  texidoc = "
The number of lines in a staff may changed by overriding the
@code{StaffSymbol} property @code{line-count}.




"
  doctitle = "Changing the number of lines in a staff"
} % begin verbatim

upper = \relative c'' {
  c4 d e f
}

lower = \relative c {
  \clef bass
  c4 b a g
}

\score {
  \context PianoStaff <<
    \new Staff {
      \upper
    }
    \new Staff {
      \override Staff.StaffSymbol.line-count = #4
      \lower
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
