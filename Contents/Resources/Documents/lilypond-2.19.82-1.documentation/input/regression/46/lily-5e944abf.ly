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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/script-shift-staccato.ly"
\sourcefileline 0

\header {
  texidoc = "The horizontal placement of staccato dots above an
upstem or below a downstem note differs from the placement of
other scripts in that different positioning is used when the dot is
alone and when it is part of a compound articulation.  The
property @code{toward-stem-shift-in-column} ensures good default
positioning of the staccato (see first measure below), and allows
precise horizontal control of a column containing a staccato and
of the staccato within it (second measure).  (@code{0.0} means
centered on the note head, @code{1.0} means centered on the stem.)
"
}

\version "2.19.21"

\relative
{
  % default
  a'4^. c_.
  a^.^- c_._-

  \override Script.toward-stem-shift-in-column = 1.0
  a4^.^- c_._-
  \revert Script.toward-stem-shift-in-column

  a4-\tweak toward-stem-shift-in-column 1.0 ^. ^-
  c4-\tweak toward-stem-shift-in-column 1.0 _. _-
}



% ****************************************************************
% end ly snippet
% ****************************************************************