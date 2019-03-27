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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/ottava.ly"
\sourcefileline 0

\header
{
  texidoc = "Ottava brackets are supported, through the
use of the music function @code{\\ottava}.

The spanner should go below a staff for 8va bassa, and the ottavation
markup can be tuned with @code{Staff.ottavation}.

"

}

\version "2.19.21"

%% . There must be a minimum distance between the octavation line and the
%%   topmost staff line, taking into account the height of the closing
%%   vertical dashed line.
				%
%% . Octavation lines broken across staves must always start with `8va'
%%   (or something similar).
				%
%% . The `8va' should be slightly offset to the left.
				%
%% . The final vertical dashed line of the octavation line should be offset
%%   to the right.
				%
%% . Octavation lines for `8va bassa' must be below the staff, not above.
				%
%% . The `8va bassa' string is far too long for short octavation lines.
%%   LilyPond should select between `8va bassa', `8ba', and `8', depending
%%   on the available horizontal space (and the octavation style selected
%%   by the user).  The same holds for `8va' and `15ma'.


\layout { ragged-right = ##t} 

\relative  {
  a'' b c a
  \ottava #1
  a b c a
  \ottava #0
  \ottava #2
  a b c a
  \ottava #0
  \ottava #-1
  a b c a
  \ottava #0
  \break
  a, 
  \ottava #1
  \set Staff.ottavation = #"8"
  b
  \ottava #0
  c a 
  \ottava #-1
  \set Staff.ottavation = \markup { \concat { 8 \tiny \raise #0.8 vb }}
  b a g
  \ottava #0
  c 
  \ottava #-1
  \set Staff.ottavation = #"8"
  c,,16
  \ottava #0
  c'16
  \ottava #-1
  \set Staff.ottavation = #"8"
  g,,16
}





% ****************************************************************
% end ly snippet
% ****************************************************************
