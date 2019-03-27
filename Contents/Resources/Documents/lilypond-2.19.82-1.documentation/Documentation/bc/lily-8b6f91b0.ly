%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,quote,relative=2]
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



\relative c''
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 910
\key d \major
\time 4/4
<d a fis>4_"notation" r
\grace g16
fis8 e16 fis
\grace a16
g8 fis16 g |
a4 \bar "||"

\set Score.measurePosition = #ZERO-MOMENT
<d, a fis>4_"performance" r
g16( fis) e fis
a16 ( g) fis g |
a4 \bar "||"



% ****************************************************************
% end ly snippet
% ****************************************************************
}
