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
\sourcefileline 901
%{
<<
  \relative \new Voice = "lahlah" {
    \set Staff.autoBeaming = ##f
    c4
    \slurDotted
    f8.[( g16])
    a4
  }
  \new Lyrics \lyricsto "lahlah" {
    more slow -- ly
  }
  \new Lyrics \lyricsto "lahlah" {
    \set ignoreMelismata = ##t % applies to "fas"
    go fas -- ter
    \unset ignoreMelismata
    still
  }
>>
%}



% ****************************************************************
% end ly snippet
% ****************************************************************
