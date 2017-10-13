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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/spacing-knee-compressed.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc = "Spacing corrections for kneed beams still work when
compression is involved."
}

\paper { line-width = 14.4\cm }

\layout {
  \context {
    \Voice
    \override Beam.auto-knee-gap = #1
  }
}

rh = \change Staff = "rh"
lh = \change Staff = "lh"
\new PianoStaff <<
  \new Staff ="rh" {
    s1*3
  }
  \new Staff ="lh" \new Voice {
    \clef bass
    \repeat unfold 12 { \rh a'16 \lh d \rh a' \lh d \noBreak }
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
