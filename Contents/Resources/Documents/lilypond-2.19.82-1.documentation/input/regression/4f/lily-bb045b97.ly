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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/volta-multi-staff-inner-staff.ly"
\sourcefileline 0
\header {
  texidoc = "By putting Volta_engraver in a staff context, one can get
volta brackets on staves other than the topmost one."
}

\layout {
  ragged-right = ##t

  \context {
    \Score
    \remove "Volta_engraver"
  }
}

\version "2.16.0"

vmus =  { \repeat volta 2 c1 \alternative { d e } } 

\relative c'' <<
  \new StaffGroup <<
    \new Staff \vmus
    \new Staff \vmus
  >>
  \new StaffGroup <<
    \new Staff \with { \consists "Volta_engraver" }
      \vmus
    \new Staff \vmus
  >>
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
