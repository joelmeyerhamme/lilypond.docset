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
\sourcefileline 715
<<
   \chords { c2 c f2 c }
   \new Staff
   \relative c' {
     \time 2/4
     c4 c g' g a a g2
   }
   \addlyrics { twin -- kle twin -- kle lit -- tle star }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************