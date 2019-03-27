%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote]
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
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1552
% Vraies petites capitales
\markup { Style normal : Hello HELLO }
\markup { \caps { Petites capitales : Hello } }
\markup { \override #'(font-features . ("smcp"))
          { Vraies petites capitales : Hello } }

% Styles numériques
\markup { Style numérique normal : 0123456789 }
\markup { \override #'(font-features . ("onum"))
          { Style numérique ancien : 0123456789 } }

% Alternatives stylistiques
\markup { \override #'(font-features . ("salt 0"))
          { Alternative stylistique 0 : εφπρθ } }
\markup { \override #'(font-features . ("salt 1"))
          { Alternative stylistique 1 : εφπρθ } }

% Fonctionnalités multiples
\markup { \override #'(font-features . ("onum" "smcp" "salt 1"))
          { Fonctionnalités multiples : Hello 0123456789 εφπρθ } }



% ****************************************************************
% end ly snippet
% ****************************************************************