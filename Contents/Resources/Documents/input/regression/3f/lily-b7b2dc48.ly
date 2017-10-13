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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/footnote-break-visibility.ly"
\sourcefileline 0
\version "2.19.21"
\header {
  texidoc = "With grobs that have break visibility, footnotes will
automatically take the break visibility of the grob being footnoted.
This behavior can be overridden.
"
}

#(set-default-paper-size "a6")

\book {

\new Staff
{
  \relative {
    c'1
    \footnote "foo" #'(0 . 2) "bar" Staff.TimeSignature
    \time 3/4
    \break \pageBreak
    c2.
    \once \override Score.FootnoteItem.break-visibility = ##(#f #f #t)
    \footnote "foo" #'(0 . 2) "bar" Staff.TimeSignature
    \time 4/4
    \break \pageBreak
    c1 \bar "|."
}}}



% ****************************************************************
% end ly snippet
% ****************************************************************