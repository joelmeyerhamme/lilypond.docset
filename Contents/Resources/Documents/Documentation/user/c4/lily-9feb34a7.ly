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
\sourcefileline 905
\score {
  \relative c' {
  c c c c
  c c c c
  }
  \addlyrics {
  longtext longtext longtext longtext
  longtext longtext longtext longtext
  }
  \layout {
    \context {
      \Lyrics
      \override LyricSpace #'minimum-distance = #1.0
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
