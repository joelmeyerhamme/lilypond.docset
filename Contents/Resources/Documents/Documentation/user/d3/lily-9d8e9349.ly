%% Generated by lilypond-book.py
%% Options: [alt=[image of music],indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "display-predefined-fretboards.ly"
\sourcefileline 0
\include "predefined-guitar-fretboards.ly"
\version "2.12.0"


mychords = \chordmode {c1 c:m c:aug c:dim c:7 c:maj7 c:m7 \break }

chordsline = {
  \mychords
  \transpose c cis {
    \mychords
  }
  \transpose c des {
    \mychords
  }
  \transpose c d {
    \mychords
  }
  \transpose c dis {
    \mychords
  }
 \transpose c ees {
    \mychords
  }
  \transpose c e {
    \mychords
  }
  \transpose c f {
    \mychords
  }
  \transpose c fis {
    \mychords
  }
  \transpose c ges {
    \mychords
  }
  \transpose c g {
    \mychords
  }
  \transpose c gis {
    \mychords
  }
  \transpose c aes {
    \mychords
  }
  \transpose c a {
    \mychords
  }
  \transpose c ais {
    \mychords
  }
  \transpose c bes {
    \mychords
  }
  \transpose c b {
    \mychords
  }
}

<<
  \context ChordNames {
    \chordsline
  }
  \context FretBoards {
    \chordsline
  }
  \context Staff {
    \chordsline
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************