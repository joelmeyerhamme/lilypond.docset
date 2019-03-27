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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/ledger-lines-varying-staves.ly"
\sourcefileline 0
\version "2.19.21"
\header {
  texidoc = "Ledger lines should appear at every other location
for a variety of staves using both @code{line-count} and
@code{line-positions}."
}

notes = \relative {
  \time 3/4
  c'2. | d | e | f
  g2. | a | b | c
  d2. | e | f | g
  a2.
}

\new Staff {
  % upper and lower lines both odd
  #(define mylines '(-1 0 1))
  \override Staff.StaffSymbol.line-count = #(length mylines)
  \override Staff.StaffSymbol.line-positions = #mylines
  \notes
}

\new Staff {
  % upper and lower lines both even
  #(define mylines '(-2 0 2))
  \override Staff.StaffSymbol.line-positions = #mylines

  \override Staff.StaffSymbol.line-count = #(length mylines)
  \notes
}

\new Staff {
  % lower line odd, upper line even
  #(define mylines '(-1 0 2))
  \override Staff.StaffSymbol.line-positions = #mylines
  \override Staff.StaffSymbol.line-count = #(length mylines)
  \notes
}

\new Staff {
  % odd line count
  \override Staff.StaffSymbol.line-count = #5
  \notes
}

\new Staff {
  % even line count
  \override Staff.StaffSymbol.line-count = #4
  \notes
}



% ****************************************************************
% end ly snippet
% ****************************************************************
