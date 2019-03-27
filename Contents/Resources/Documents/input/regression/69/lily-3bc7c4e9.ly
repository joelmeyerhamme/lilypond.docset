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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/ledger-lines-non-merging.ly"
\sourcefileline 0
\version "2.19.49"

\header {
  texidoc = "In some rare cases like these the
extents of two ledger lines at the same vertical
position in the same note column do not overlap
horizontally, and they should not be merged into
a single ledger line.
See LSR 505: Displaying complex chords
http://lsr.di.unimi.it/LSR/Item?id=505
"
}

fixA = {
  \once \override Stem.length = #11
}

fixB = {
  \once \override NoteHead.X-offset = #1.7
  \once \override Stem.length = #7
  \once \override Stem.rotation = #'(45 0 0)
  \once \override Stem.extra-offset = #'(-0.1 . -0.2)
  \once \override Flag.style = #'no-flag
  \once \override Accidental.extra-offset = #'(4 . -.1)
}

\relative c' {
  % case 1
  \pitchedTrill a'' \startTrillSpan a
  % case 2
  << { \fixA <b,,, d!>8 } \\ { \voiceThree \fixB dis } >> s
}



% ****************************************************************
% end ly snippet
% ****************************************************************
