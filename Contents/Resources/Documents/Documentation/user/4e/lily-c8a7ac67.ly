%% Generated by lilypond-book.py
%% Options: [indent=0\mm,fragment,quote,relative=2,ragged-right,alt=[image of music]]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm - 2.0 * 0.4\in
  ragged-right = ##t
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}

\relative c''
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 1024
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