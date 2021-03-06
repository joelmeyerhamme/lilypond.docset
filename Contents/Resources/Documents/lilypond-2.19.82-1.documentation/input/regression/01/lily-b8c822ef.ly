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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/repeat-tremolo-one-note-articulation.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "A tremolo repeat containing only one note (no sequential music)
  shall not be scaled. An articulation or dynamic sign on the note should not
  confuse lilypond."
}

\paper { ragged-right = ##t }
\score {
  \new Staff \relative {
    \repeat tremolo 4 { a'16 }
    \repeat tremolo 4 { a16\f }
    \repeat tremolo 4 a16
    \repeat tremolo 4 a16\f |
    \repeat tremolo 4 a16\f-> 
    c2. |
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
