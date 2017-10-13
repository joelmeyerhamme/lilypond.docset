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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/rehearsal-mark-align.ly"
\sourcefileline 0

\header {

  texidoc = "The rehearsal mark is put on top a breakable symbol,
  according to the value of @code{break-align-symbols} value of the
  @code{RehearsalMark}. The same holds for @code{BarNumber} grobs."

}

\version "2.19.21"
  
\relative {
  c'1 \mark "foo"
  c1
  \key cis \major
  \clef alto
  \override Score.RehearsalMark.break-align-symbols = #'(key-signature)
  \mark "on-key"
  cis
  \key ces \major
  \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \clef treble
  \mark "on clef"
  ces
}



% ****************************************************************
% end ly snippet
% ****************************************************************
