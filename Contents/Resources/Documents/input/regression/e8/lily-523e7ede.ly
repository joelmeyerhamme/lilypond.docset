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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/collision-dots.ly"
\sourcefileline 0
\header { texidoc = "Collision resolution tries to put notes with dots
  on the right side."
}

\version "2.12.0"
\layout { ragged-right= ##t }

% todo: b2 (up) + b8 down looks strange compared to c2up + b8. (down)
\context Staff  <<
  \clef "bass"
  { b8. c'16 d'4 b8  c'8  d'4 b2 b2  }
  \\
  { b2 b2 b8. a16 g4 b8 a g4 }
>>






% ****************************************************************
% end ly snippet
% ****************************************************************