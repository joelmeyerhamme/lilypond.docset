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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/dynamics-avoid-cross-staff-stem-3.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Cross-staff @code{Dynamic} does not trigger a cyclic
dependency for direction look-up.
"
}

<<
  \new Staff = "up"
    \relative {
      f'8
      \change Staff = "down"
      c e\f %should not trigger cyclic dependency
      \change Staff = "up"
      f
    }
  \new Staff = "down" { \clef bass s2 }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
