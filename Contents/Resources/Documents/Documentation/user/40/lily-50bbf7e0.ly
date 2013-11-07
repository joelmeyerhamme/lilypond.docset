%% Generated by lilypond-book.py
%% Options: [quote,alt=[image of music],indent=0\mm,verbatim]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  line-width = 160\mm - 2.0 * 0.4\in
  indent = 0\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 454
\layout{ indent = #0 }
emptymusic = {
  \repeat unfold 2 % À modifier pour plus de lignes.
  { s1\break }
  \bar "|."
}
\new Score \with {
  \override TimeSignature #'transparent = ##t
% décommenter la  ligne suivante selon besoin
%  \override Clef #'transparent = ##t
  defaultBarType = #""
  \remove Bar_number_engraver
} <<

% à adapter selon les portées désirées
  \new Staff \emptymusic
  \new TabStaff \emptymusic
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
