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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/tie-single.ly"
\sourcefileline 0
\header
{
  texidoc = "Formatting for isolated ties.

@itemize @bullet
@item short ties are in spaces
@item long ties cross staff lines
@item ties avoid flags of left stems.
@item ties avoid dots of left notes.

@item short ties are vertically centered in the space, as well those
that otherwise don't fit in a space

@item extremely short ties are put over the noteheads, instead of between.
 
@end itemize
"

}
\layout {
  indent = #0.0
  ragged-right = ##t
}

\version "2.19.21"

frag =
\relative {
  c''16 c2...~ 16 ~ 2... |
  c4~8 c8~16 c16~32 c16.~[ c64]~ 64[ c8..] |
}


\new Staff \with {
  \remove "Time_signature_engraver"
} {
  \stemUp

  \frag \break
  \transpose c d \frag\break
  \transpose c e \frag
  
}



% ****************************************************************
% end ly snippet
% ****************************************************************