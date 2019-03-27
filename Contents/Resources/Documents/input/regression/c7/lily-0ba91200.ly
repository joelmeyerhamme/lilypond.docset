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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/magnifyMusic-slurs.ly"
\sourcefileline 0
\version "2.19.8"

\header {
  texidoc = "Slurs should be scaled along with notation size when
using the @code{\magnifyMusic} command.  They can get thicker than
the default, but not thinner."
}

\score {
  \new Voice {
    \omit Staff.TimeSignature
    \time 7/8
    <<
      { \repeat unfold 7 \relative { g'32[( a b c)] } }
      {
        \magnifyMusic 0.50 s8
        \magnifyMusic 0.63 s
        \magnifyMusic 0.80 s
        \magnifyMusic 1.00 s
        \magnifyMusic 1.26 s
        \magnifyMusic 1.59 s
        \magnifyMusic 2.00 s
      }
    >>
  }
  \addlyrics { "50%" _ _ "100%" _ _ "200%" }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
