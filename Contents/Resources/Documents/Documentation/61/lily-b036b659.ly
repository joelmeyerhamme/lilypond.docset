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
\sourcefileline 673
\new Staff {
  % この 2 行は例を見やすくするためのものです
  \time 16/1
  \omit Staff.TimeSignature
  % 八全休符を譜刻します。二全休符 4 つと等価です
  r\maxima
  % 四全休符を譜刻します。二全休符 2 つと等価です
  r\longa
  % 二全休符を譜刻します。
  r\breve
  r1 r2 r4 r8 r16 r32 r64 r128
}



% ****************************************************************
% end ly snippet
% ****************************************************************
