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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/bar-lines.ly"
\sourcefileline 0
\version "2.19.21"

\header { texidoc = "Various types of bar lines can be drawn.

The dashes in a dashed bar line covers staff lines exactly. Dashed
barlines between staves start and end on a half dash precisely.

The dots in a dotted bar line are in spaces.

A thick bar line is created by \bar \".\", which is consistent
with e.g. \bar \"|.\"

A ticked bar line is a short line of the same length as a staff
space, centered on the top-most barline.

" }

\relative \new StaffGroup <<
  \new Staff = "1" {
    c'2 \bar "!" c
    s1
    c2 \bar ";" c
    s1
    c2 \bar "." c
    s1
    c2 \bar "'" c
  }
  \new Staff = "2" {
    c2 c
    s1
    c2 c
    s1
    c2 c
    s1
    c2 c
  }
>>




% ****************************************************************
% end ly snippet
% ****************************************************************
