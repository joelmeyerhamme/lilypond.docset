%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,quote,ragged-right]
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




{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 2293
% Set details for later Text Spanner
\override TextSpanner.bound-details.left.text
    = \markup { \small \bold Slower }
% Place dynamics above staff
\dynamicUp
% Place following Ottava Bracket below Text Spanners
\once \override Staff.OttavaBracket.outside-staff-priority = #340
% Start Ottava Bracket
\ottava #1
c''4 \startTextSpan
% Add Dynamic Text
c''4\pp
% Add Dynamic Line Spanner
c''4\<
% Add Text Script
c''4^Text |
c''4 c''
% Add Dynamic Text
c''4\ff c'' \stopTextSpan |
% Stop Ottava Bracket
\ottava #0
c'4 c' c' c' |



% ****************************************************************
% end ly snippet
% ****************************************************************
}