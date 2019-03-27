%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/staff-tweak.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "The staff is a grob (graphical object) which may be adjusted as well, for example, to have 6 thick lines and a slightly large @code{staff-space}.
However, beams remain correctly quantized."    

}

\layout  {
  ragged-right = ##t
}


mus =  \relative { c'4 g' d'8 d d d }


<<
  \new Staff {
    \override Staff.StaffSymbol.thickness = #2.0
    \override Staff.StaffSymbol.line-count = #6
    \override Staff.StaffSymbol.staff-space = #1.1
    \mus
  }
  \mus
>>






% ****************************************************************
% end ly snippet
% ****************************************************************