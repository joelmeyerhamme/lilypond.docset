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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/ambitus-gap.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc = "The gaps between an @code{AmbitusLine} and its
note heads are set by the @code{gap} property. By default,
@code{gap} is a function that reduces the gap for small intervals
(e.g. a fourth), so that the line remains visible."
}

\layout {
  \context {
    \Voice
    \consists "Ambitus_engraver"
  }
}

\new Staff {
  \time 2/4
  \override AmbitusLine.gap = #1
  c'4 g''
}

\new Staff <<
  \time 2/4
  { d'' g'' }
  \\
  { c' g' }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
