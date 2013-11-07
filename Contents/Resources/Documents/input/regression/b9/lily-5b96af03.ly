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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/spacing-loose-grace-error.ly"
\sourcefileline 0
\header
{
  
texidoc = "Even in case of incorrect contexts (eg. shortlived
  contexts) that break linking of columns through spacing wishes,
  @code{strict-note-spacing} defaults to a robust solution."

}

\version "2.12.0"


%% \new Staff cause shortlived, disconnected Voice contexts
%% breaking spacing-wishes links.
\new Staff {
  \override Score.SpacingSpanner #'strict-note-spacing = ##t
  \afterGrace c'4 {c'32 c'32 }
  c'4
}



% ****************************************************************
% end ly snippet
% ****************************************************************