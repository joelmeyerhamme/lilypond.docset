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
\sourcefileline 277
nam = \lyricmode { cgh cgho cghm ssh cgl cglo cglm ssl }
mus = \drummode { cgh cgho cghm ssh cgl cglo cglm ssl s16 }

<<
  \new DrumStaff \with {
    \remove Bar_engraver
    \remove Time_signature_engraver
    drumStyleTable = #congas-style
    \override StaffSymbol #'line-count = #2

    %% this sucks; it will lengthen stems.
    \override StaffSymbol #'staff-space = #2
    \override Stem #'transparent = ##t
    \override Stem #'Y-extent = ##f
  } \mus
  \new Lyrics {
    \override LyricText #'font-family = #'typewriter
    \nam
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
