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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/stanza-number.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Stanza numbers are put left of their lyric.  They
are aligned in a column."
}

\relative { r4 r4 c''4 c4 }
\addlyrics {
  \skip 2
  \set stanza = "1."
  Foo8 
}
\addlyrics {
  \skip 2
  \set stanza = \markup { 2. }
  FFFooooo8
}



% ****************************************************************
% end ly snippet
% ****************************************************************