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
\sourcefileline 381
\score {
  <<
    \new Staff = "Sänger" <<
      \new Voice = "Singstimme" { c'1 }
      \addlyrics { And }
    >>
    \new PianoStaff = "Klavier" <<
      \new Staff = "oben" { }
      \new Staff = "unten" { }
    >>
  >>
  \layout { }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
