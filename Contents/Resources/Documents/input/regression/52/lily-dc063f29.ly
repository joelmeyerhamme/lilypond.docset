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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/collision-dots-up-space-dotted.ly"
\sourcefileline 0
\header {

  texidoc = "For collisions where the upper note is dotted and in a
  space, the upper is moved to right.  This behavior can be tuned by
  prefer-dotted-right."

  }

\version "2.19.21"

\paper{ ragged-right=##t }

\new Staff \relative <<
  { fis'4.
    \override Staff.NoteCollision.prefer-dotted-right = ##f
    fis4. }
  \\
  { \autoBeamOff e8 e e e e e e }
>> 



% ****************************************************************
% end ly snippet
% ****************************************************************