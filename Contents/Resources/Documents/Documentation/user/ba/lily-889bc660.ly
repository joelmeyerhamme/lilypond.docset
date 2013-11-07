%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,fragment,quote,relative=1,ragged-right,alt=[image of music]]
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

\relative c'
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 1992
% Set details for later Text Spanner
\override TextSpanner #'bound-details #'left #'text
    = \markup { \small \bold Slower }
% Place dynamics above staff
\dynamicUp
% Start Ottava Bracket
\ottava #1
c' \startTextSpan
% Add Dynamic Text
c\pp
% Add Dynamic Line Spanner
c\<
% Add Text Script
c^Text
c c
% Add Dynamic Text
c\ff c \stopTextSpan
% Stop Ottava Bracket
\ottava #0
c, c c c



% ****************************************************************
% end ly snippet
% ****************************************************************
}
