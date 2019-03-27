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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/color.ly"
\sourcefileline 0
\version "2.19.21"

\header{
  texidoc = "Each grob can have a color assigned to it.
Use the @code{\\override} and @code{\\revert} expressions to set the
@code{color} property."
}

\paper { ragged-right = ##t }

\relative {
  \override Accidental.color = #darkgreen
  \override Beam.color = #cyan
  \override NoteHead.color = #darkyellow
  c'4
  \override NoteHead.color = #red
  f
  \override NoteHead.color = #darkmagenta
  g
  \override NoteHead.color = #darkblue
  b
  \override NoteHead.color = #green
  \override Stem.color = #blue
  \override Flag.color = #magenta
  e8 es d dis e4 r
}



% ****************************************************************
% end ly snippet
% ****************************************************************