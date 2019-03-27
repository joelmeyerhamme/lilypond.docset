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
\sourcefileline 151
\relative {
  % 符頭のサイズを変更します
  <f' \tweak font-size -4 b e>-5
  % 運指記号のサイズを変更します
  bes-\tweak font-size 0 -3
  % 臨時記号のサイズを変更します
  \once \override Accidental.font-size = -4 bes!-^
  % アーティキュレーションのサイズを変更します
  \once \override Script.font-size = 4 bes!-^
}



% ****************************************************************
% end ly snippet
% ****************************************************************