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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/system-start-bracket.ly"
\sourcefileline 0
\version "2.12.0"
\header {
  texidoc = "A piano context included within a staff group should
cause the piano brace to be drawn to the left of the staff angle
bracket."
}

\layout {ragged-right = ##t}


{
  \context StaffGroup <<
    c4
    \context PianoStaff <<
      \new Staff d
      \new Staff e
    >>
  >>
}






% ****************************************************************
% end ly snippet
% ****************************************************************
