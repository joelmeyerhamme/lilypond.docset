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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/repeat-volta-segno.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc="
  The segno sign should be automatically combined with the
  appropriate repeat bar line when @code{\inStaffSegno} is
  used.
"
}

\relative {
  c'1
  \inStaffSegno
  c2^"no repeat" c c c
  \repeat volta 2 {
    \inStaffSegno  % start repeat
  c2^"start repeat" c c c
  }
  \break
  c1
  \repeat volta 2 {
  c2 c c c^"end repeat"
    \inStaffSegno  % end repeat
  }
  c2 c c c
  \repeat volta 2 {
  c2 c c c
  }
  \inStaffSegno  % double repeat
  \repeat volta 2 {
  c2^"double repeat" c c c
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************