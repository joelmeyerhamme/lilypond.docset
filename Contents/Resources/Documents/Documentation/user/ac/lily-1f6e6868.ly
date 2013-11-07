%% Generated by lilypond-book.py
%% Options: [alt=[image of music],staffsize=12,indent=0\mm,line-width=13.0\cm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

#(set-global-staff-size 12)

\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 13.0\cm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 2404
\new PianoStaff <<
  \context Staff = SA \relative c' {
    \key bes \major
    \time 4/4
    \clef treble
    << \context Voice = rha {
        \stemUp
        r1 | r2 r8 g'8 bes d, |
        cis4 d r8 e!16 f g8 f16 e |
        f8 g16 a bes8 a16 g a8
      }
      \context Voice = rhb {
        \stemDown
        r1 | r | r | r2 s8
      }
    >>
  }
  \context Staff = SB \relative c' {
    \clef bass
    \key bes \major
    << \context Voice = lha {
        \stemUp
        r8 d es g, fis4 g | r8 a16 bes c8 bes16 a bes4 g |
        r8 a16 g f8 g16 a bes8 g e! cis' |
        d4. e!8 f
      }
      \context Voice = lhb {
        \stemDown
        r1 | r | r | r2 s8
      } >>
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************