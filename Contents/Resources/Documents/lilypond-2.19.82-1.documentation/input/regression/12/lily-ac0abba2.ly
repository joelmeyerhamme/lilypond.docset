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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/shape-slurs.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "The control points of a broken or unbroken slur may be offset by
@code{\\shape}.  The blue slurs are modified from the default slurs shown first."
}

\layout {
  indent = 0
  ragged-right = ##t
}

% unmodified
\relative {
  d''4( d' b g
  g,8 f' e d c2)
  d4( d' b g
  \break
  g,8 f' e d c2)
}

% modified
\relative c'' {
  \override Slur.color = #blue
  \shape #'((0 . -2) (-1 . 3.5) (0.5 . 0.5) (0 . -2.5)) Slur
  d4( d' b g g,8  f' e d c2)
  \shape #'(
   ((0 . -2.5) (0 . 1.5) (0 . 1) (0 . -0.5))
   ((1 . 2.5) (0 . 1.5) (0 . 1) (0 . 0))
  ) Slur
  d4( d' b g
  \break
  g,8 f' e d c2)
}



% ****************************************************************
% end ly snippet
% ****************************************************************
