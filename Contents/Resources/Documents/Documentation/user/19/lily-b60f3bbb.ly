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
\sourcefileline 585
\textLengthOn
c'4^\markup{ \raise #5 "not raised" }
\once \override TextScript #'padding = #3
c'4^\markup{ raised }
c'4^\markup{ \hspace #0 \raise #1.5 raised }



% ****************************************************************
% end ly snippet
% ****************************************************************
}