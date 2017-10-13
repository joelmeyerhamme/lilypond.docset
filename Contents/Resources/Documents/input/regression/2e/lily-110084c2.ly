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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/tablature-harmonic-tie.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "
When a harmonic note is tied in tablature, neither the fret number
nor the harmonic brackets for the second note appear in the tablature.
"
}

music =  \relative {
  s2.  <d'\4\harmonic>4 ~ |
  <d\4\harmonic>1  |
}

\new StaffGroup <<
  \new Staff  { \clef "G_8" \music }
  \new TabStaff  { \clef "moderntab" \music }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
