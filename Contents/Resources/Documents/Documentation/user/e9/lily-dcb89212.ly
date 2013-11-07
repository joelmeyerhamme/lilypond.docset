%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,quote,ragged-right,alt=[image of music]]
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



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 244
\new Staff {
  \tweak #'text #tuplet-number::calc-fraction-text
  \tweak #'direction #up
  \times 4/3 {
     \tweak #'direction #down
     \times 2/3 { c'8[ c'8 c'8] }
     \override TupletBracket #'direction = #down
     \times 2/3 { c'8[ c'8 c'8] }
     \times 2/3 { c'8[ c'8 c'8] }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
