%% Generated by lilypond-book.py
%% Options: [quote,alt=[image of music],indent=0\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  line-width = 5\in - 2.0 * 0.4\in
  indent = 0\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 113
\relative c'' {
  \override Stem #'flag = #modern-straight-flag
  c,16 \acciaccatura {c'8} d4 d32
  \bar":"
  \override Stem #'flag = #old-straight-flag
  c,16 \acciaccatura {c'8} d4 d32
}



% ****************************************************************
% end ly snippet
% ****************************************************************
