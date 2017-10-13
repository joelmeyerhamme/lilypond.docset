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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/accidental.ly"
\sourcefileline 0

\version "2.19.21"

\header{
  texidoc="
Accidentals work: the second note does not get a sharp. The third and
fourth show forced and cautionary accidentals.
"
}

\layout { ragged-right = ##t }

foo = \relative   {   \key as \major dis''4 dis dis!^"force" dis? }

<< \foo 
   \context NoteNames \foo
 >>



% ****************************************************************
% end ly snippet
% ****************************************************************
