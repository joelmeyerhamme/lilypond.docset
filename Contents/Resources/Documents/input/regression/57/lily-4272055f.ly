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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/staff-tweak.ly"
\sourcefileline 0
\version "2.12.0"

\header {
  texidoc = "The staff is a grob (graphical object) which may be adjusted as well, for example, to have 6 thick lines and a slightly large @code{staff-space}.
However, beams remain correctly quantized."    

}

\layout  {
  ragged-right = ##t
}


mus =  \relative c' { c4 g' d'8 d d d }


<<
  \new Staff {
    \override Staff.StaffSymbol  #'thickness = #2.0
    \override Staff.StaffSymbol  #'line-count = #6
    \override Staff.StaffSymbol  #'staff-space = #1.1
    \mus
  }
  \mus
>>






% ****************************************************************
% end ly snippet
% ****************************************************************
