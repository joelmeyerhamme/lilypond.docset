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
\sourcefileline 2241
\set Score.currentBarNumber = #111
\override Score.BarNumber #'break-visibility = #'#(#t #t #t)
% Increase the size of the bar number by 2
\override Score.BarNumber #'font-size = #2
% Print a bar number every second measure
\set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
c1 c1
% Center-align bar numbers
\override Score.BarNumber #'self-alignment-X = #0
c1 c1
% Right-align bar numbers
\override Score.BarNumber #'self-alignment-X = #-1
c1 c1



% ****************************************************************
% end ly snippet
% ****************************************************************
}