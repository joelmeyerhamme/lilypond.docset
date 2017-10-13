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
\sourcefileline 191
\relative {
  % ここで \partial を使わないで下さい
  c'4 e g  % ここで小節チェックを行わないで下さい
  % ここで \partial を使わないで下さい
  \repeat volta 4 {
    e4 |
    c2 e |
    % ここで \partial を使わないで下さい
    g4 g g  % ここで小節チェックを行わないで下さい
  }
  % ここで \partial を使わないで下さい
  g4 |
  a2 a |
  g1 |
}



% ****************************************************************
% end ly snippet
% ****************************************************************