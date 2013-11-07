%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/non-empty-text.ly"
\sourcefileline 0
\version "2.12.0"

\header{
  texidoc = "By default, text is set with empty horizontal dimensions.
The property @code{extra-spacing-width} in @code{TextScript} is used
to control the horizontal size of text."
}

\layout {
  line-width = 3.0\cm
}

\relative c''{
  %% \textLengthOff
  %% short for \override TextScript #'extra-spacing-width = #'(+inf.0 . -inf.0)
  %%           \override TextScript #'extra-spacing-height = #'(0 . 0)
  c2_"very wide and long text" c | \break
  %% short for \override TextScript #'extra-spacing-width = #'(0 . 0)
  %%           \override TextScript #'extra-spacing-height = #'(-inf.0 . +inf.0)
  \textLengthOn
  c2_"very wide and long text" c
}



% ****************************************************************
% end ly snippet
% ****************************************************************
