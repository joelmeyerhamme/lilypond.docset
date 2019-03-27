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
\sourcefileline 2085
\relative {
  \set fingeringOrientations = #'(left)
  <f'-2>4
  <c-1 e-2 g-3 b-5>4
  \set fingeringOrientations = #'(left)
  <f-2>4
  <c-1 e-2 g-3 b-5>4 |
  \set fingeringOrientations = #'(up left down)
  <f-2>4
  <c-1 e-2 g-3 b-5>4
  \set fingeringOrientations = #'(up left)
  <f-2>4
  <c-1 e-2 g-3 b-5>4 |
  \set fingeringOrientations = #'(right)
  <f-2>4
  <c-1 e-2 g-3 b-5>4
}



% ****************************************************************
% end ly snippet
% ****************************************************************
