%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/beam-multiple-cross-staff.ly"
\sourcefileline 0
\version "2.12.0"
\header {

  texidoc = "Kneed beams (often happens with cross-staff beams)
should look good when there are multiple beams: all the beams should
go on continuously at the staff change. Stems in both staves reach up
to the last beam.
"
}

\layout {
  ragged-right= ##t
}

\context PianoStaff \relative c' <<
  \new Staff = SA {
    \stemDown
    c8[ c16 \change Staff = SB \stemUp c16 ]
    \stemNeutral
    f[ g \change Staff = SA a c] 
  }
  \new Staff = SB \relative c' {
    \clef bass
    b8[ b16 \stemUp b,,16 ]

    g'4\rest
    b,8[ b16 \stemDown b''16 b ]
  }	     
  
>>





% ****************************************************************
% end ly snippet
% ****************************************************************