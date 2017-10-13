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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/dot-column-vertical-positioning.ly"
\sourcefileline 0
\version "2.16.0"

\header {
  texidoc = "Dot columns should not trigger vertical spacing before
line breaking.  If the regtest issues a programming_error saying that
vertical spacing has been called before line breaking, it has failed.
"
}

\context Staff <<
  \new Voice { \voiceOne f''8.[ e''16] }
  \new Voice { \voiceThree r8. a'16}
>>



% ****************************************************************
% end ly snippet
% ****************************************************************