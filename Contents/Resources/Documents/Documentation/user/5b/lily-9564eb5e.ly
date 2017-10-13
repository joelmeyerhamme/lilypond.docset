%% Generated by lilypond-book.py
%% Options: [alt=[image of music],ragged-right,indent=0\mm,verbatim]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
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
\sourcefileline 870
% Create 9/8 split into 2/4 + 5/8
tsMarkup = \markup {
  \override #'(baseline-skip . 2) \number {
    \column { "2" "4" }
    \vcenter "+"
    \bracket \column { "5" "8" }
  }
}

{
  \override Staff.TimeSignature #'stencil =
    #ly:text-interface::print
  \override Staff.TimeSignature #'text = #tsMarkup
  \time 9/8
  c'2 \bar ":" c'4 c'4.
  c'2 \bar ":" c'4 c'4.
}



% ****************************************************************
% end ly snippet
% ****************************************************************