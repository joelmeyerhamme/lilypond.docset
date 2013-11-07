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
\sourcefileline 233
{
  \override Staff.StaffSymbol #'color = #(x11-color 'SlateBlue2)
  \set Staff.instrumentName = \markup {
    \with-color #(x11-color 'navy) "Clarinet"
  }
  \time 2/4
  gis''8 a''
  \override Beam #'color = #(x11-color "medium turquoise")
  gis'' a''
  \override NoteHead #'color = #(x11-color "LimeGreen")
  gis'' a''
  \override Stem #'color = #(x11-color 'Boggle)
  gis'' a''
}



% ****************************************************************
% end ly snippet
% ****************************************************************
