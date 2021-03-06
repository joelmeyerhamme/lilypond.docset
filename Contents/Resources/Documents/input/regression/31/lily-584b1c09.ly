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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/make-relative-copies.ly"
\sourcefileline 0
\version "2.19.22"

\header {
  texidoc = "@code{make-relative} has to copy its argument expressions
in case the generated music expression is getting copied and modified.

The code here defines a @code{\\reltranspose} function working inside
of @code{\\relative} and uses it.  Both staves should appear
identical."
}

\layout {
  ragged-right = ##t
}

reltranspose =
#(define-music-function (from to music)
  (ly:pitch? ly:pitch? ly:music?)
  (make-relative (music) music
   #{ \transpose #from #to $music #}))

mus =
\reltranspose c g {
  \partial 4. c8 e g |
  c2 r8 c, e g c1 | \bar "|."
}

<<
  \new Staff \relative \mus
  \new Staff \relative \mus
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
