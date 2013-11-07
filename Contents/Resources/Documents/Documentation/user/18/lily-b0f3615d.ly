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
\sourcefileline 3283
rhMusic = \relative c'' {
  r2
  c4.\( g8 |
  \once \override Tie #'staff-position = #3.5
  bes1~ |
  \bar "||"
  \time 6/4
  bes2.^\markup {\bold "Moderato"} r8
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    {c,8[ d fis bes a] | }
  \\
    % Reposition the c2 to the right of the merged note
    {c,8~ \once \override NoteColumn #'force-hshift = #1.0
    % Move the c2 out of the main note column so the merge will work
    \shiftOnn c2}
  \\
    % Stem on the d2 must be down to permit merging
    {s8 \stemDown \once \override Stem #'transparent = ##t d2}
  \\
    {s4 fis4.}
  >>
  \mergeDifferentlyHeadedOff
  \mergeDifferentlyDottedOff
  g2.\)
}

lhMusic = \relative c' {
  r2 <c g ees>2( |
  <d g, d>1)\arpeggio |
  r2. d,,4 r4 r |
  r4
}

\score {
  \new PianoStaff <<
    \new Staff = "RH"  <<
      \key g \minor
      \rhMusic
    >>
    \new Staff = "LH" <<
      \key g \minor
      \clef "bass"
      \lhMusic
    >>
  >>
}




% ****************************************************************
% end ly snippet
% ****************************************************************
