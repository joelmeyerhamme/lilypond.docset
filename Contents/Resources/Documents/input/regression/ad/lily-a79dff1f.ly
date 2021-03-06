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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/metronome-marking-align-order.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Metronome marks respect symbol order in
@code{break-align-symbols}.

In this example, the default is changed to
@code{'(time-signature key-signature)}: since @code{key-signature}
is second in the list, the mark should only be aligned with the key
signature if there is no time signature present, as in the second
measure.
"  
}

\paper {
  ragged-right = ##t
}

\relative {
  \override Staff.KeySignature.break-align-anchor-alignment = #LEFT
  \override Score.MetronomeMark.break-align-symbols = #'(time-signature key-signature)
  \key c \minor
  \tempo "Time"
  c'1 
  \key as \major
  \tempo "Key"
  c1
}



% ****************************************************************
% end ly snippet
% ****************************************************************
