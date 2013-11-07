%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,fragment,quote,relative=2,ragged-right,alt=[image of music]]
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
\sourcefileline 726
{
  \time 6/8
  {
    r4 b8
    % Increase thickness of all following slurs from 1.2 to 5.0
    \override Slur #'thickness = #5.0
    b[( g]) g |
    g[( e])
    % Revert thickness of all following slurs to default of 1.2
    \revert Slur #'thickness
    e d[( f]) a |
    a g
  }
  \addlyrics {
    The man who feels love's sweet e -- mo -- tion
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
}
