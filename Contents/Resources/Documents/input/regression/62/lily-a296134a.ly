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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/rehearsal-mark-align-priority.ly"
\sourcefileline 0

\header {
  texidoc = "When the break-align-symbols property is given as a list,
  the alignment depends on which symbols are visible."
}

\version "2.12.0"
  
\relative {
  \override Score.RehearsalMark #'break-align-symbols = #'(clef key-signature staff-bar)
  c1
  \clef "bass"
  \mark "clef"
  \noBreak

  c1
  \clef "treble"
  \key g \major
  \mark "clef"
  \noBreak

  c1
  \key f \major
  \mark "key"
  \noBreak

  c1
  \mark "bar"
  \noBreak

  c1
}



% ****************************************************************
% end ly snippet
% ****************************************************************
