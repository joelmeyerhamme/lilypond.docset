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
\sourcefileline 1081
\new Staff \relative {
  \new Voice = "principale" {
    \voiceOneStyle
    % Questa sezione è omofona
    c'16^( d e f
    % Inizia la sezione simultanea con tre voci
    \voices "principale",2,3
    <<
      % Continua la voce principale in parallelo
      { g4 f e | d2 e) | }
      % Inizializza la seconda voce
    \\
      % Imposta i gambi, etc., in giù
      { r8 e4 d c8~ | 8 b16 a b8 g~ 2 | }
    \\
      % Inizializza la terza voce
      % Imposta i gambi, etc, in su
      { s2. | s4 b c2 | }
    >>
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************