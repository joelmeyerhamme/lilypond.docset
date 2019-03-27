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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/lyrics-no-notes.ly"
\sourcefileline 0
\header {
  texidoc ="Lyric syllables without note attachment are
aligned correctly even if the paper column is very wide."
}
 
\layout{ ragged-right = ##t }

\version "2.19.21"
<<
  \override Score.PaperColumn.keep-inside-line = ##f
  \new Staff \relative {
    \key aes \major
    \context Voice = "1" { 
      f'8 f
      \textLengthOff
      
      f^"xxxxxxxxxxxxxxxxxxxxxxxxxx"  f
    }
  }
  \new Lyrics \lyricmode {
    \skip 8
    \skip 8
    xx8
    x8
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
