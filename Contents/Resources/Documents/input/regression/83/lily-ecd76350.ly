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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/lyric-melisma-alignment.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "@code{lyricMelismaAlignment} sets the default alignment for melismata.
It works with both automatic and manual melismata."
}

\relative {
  c'4^"auto"( d e f)
  \set melismaBusyProperties = #'()
  c4^"manual" d e f
}
\addlyrics {
  \set lyricMelismaAlignment = #RIGHT
  right-align __
  \set lyricMelismaAlignment = #CENTER
  center  __ _ _ _
}



% ****************************************************************
% end ly snippet
% ****************************************************************
