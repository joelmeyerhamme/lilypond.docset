%% Generated by lilypond-book.py
%% Options: [quote,alt=[image of music],ragged-right,indent=0\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  line-width = 160\mm - 2.0 * 0.4\in
  ragged-right = ##t
  indent = 0\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 816
\relative c <<
  \new Staff {
    \time 2/4 R2*3
    r4 f8 a cis4 f e d
  }
  \new Staff {
    \clef bass
    r4 d,8 f | gis4 c | b bes |
    a8 e f4 | g d | gis f
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************