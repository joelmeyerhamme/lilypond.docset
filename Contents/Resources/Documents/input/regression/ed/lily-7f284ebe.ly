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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/tie-single.ly"
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

@item extremely short ties are put over the noteheads, instead of inbetween.
 
@end itemize
"

}
\layout {
  indent = #0.0
  ragged-right = ##t
}

\version "2.12.0"

frag =
\relative c'' {
  c16 c2...~ c16 ~ c2... |
  c4~c8 c8~c16 c16~c32 c16.~[ c64]~ c64[ c8..] |
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
