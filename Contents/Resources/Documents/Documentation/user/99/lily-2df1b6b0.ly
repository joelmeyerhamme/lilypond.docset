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
\sourcefileline 1895
{
  c'4 e''4 e'4 b'4 |
  b'4 e''4 b'4 e''4|
  \override Staff.NoteSpacing #'stem-spacing-correction = #1.5
  \override Staff.StaffSpacing #'stem-spacing-correction = #1.5
  c'4 e''4 e'4 b'4 |
  b'4 e''4 b'4 e''4|
}



% ****************************************************************
% end ly snippet
% ****************************************************************