%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,papersize=a8landscape,quote]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(set-paper-size "a8landscape")
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1556
\book {
  \header { tagline = ##f }
  \relative c'' {
    r1 |
    \footnote #'(-0.5 . -1) "Cambio di tempo" Staff.TimeSignature
    \time 3/4
    \footnote #'(1 . -1) "Gambo dell'accordo" Stem
    <c e g>4 q q
    \footnote #'(-0.5 . 1) "Stanghetta" Staff.BarLine
    q q
    \footnote #'(0.5 . -1) "Cambio di armatura" Staff.KeySignature
    \key c \minor
    q
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
