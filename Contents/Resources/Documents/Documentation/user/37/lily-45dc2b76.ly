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
\sourcefileline 798
\new Staff \relative c'' {
  \key aes \major
  << % Voice one
    { c2 aes4. bes8 }
  \\ % Voice two
    { aes2 f4 fes }
  \\ % No voice three
  \\ % Voice four
    {
      % Ignore these for now - they are explained in Ch 4
      \once \override NoteColumn #'force-hshift = #0
      <ees c>2
      \once \override NoteColumn #'force-hshift = #0.5
      des2
    }
  >> |
  <c ees aes c>1 |
}



% ****************************************************************
% end ly snippet
% ****************************************************************
