%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/collision-dots-up-space-dotted.ly"
\sourcefileline 0
\header {

  texidoc = "For collisions where the upper note is dotted and in a
  space, the upper is moved to right.  This behavior can be tuned by
  prefer-dotted-right."

  }

\version "2.12.0"

\paper{ ragged-right=##t }

\new Staff \relative c' <<
  { fis4.
    \override Staff.NoteCollision #'prefer-dotted-right = ##f
    fis4. }
  \\
  { \autoBeamOff e8 e e e e e e }
>> 



% ****************************************************************
% end ly snippet
% ****************************************************************