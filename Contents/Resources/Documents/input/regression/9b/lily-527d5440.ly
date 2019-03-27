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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/beam-funky-beamlet.ly"
\sourcefileline 0

\version "2.19.21"
\header {

  texidoc=" Funky kneed beams with beamlets also work. The beamlets
should be pointing to the note head.
"

}

\layout { ragged-right = ##t}

\relative {
  \once \override Stem.direction = #UP
  c'16
  \once \override Stem.direction = #DOWN

  c''8 c,,16
  \once \override Stem.direction = #UP
  c16
  \once \override Stem.direction = #DOWN

  c''8 c16
  \once \override Stem.direction = #DOWN
  
  c16 c,,8
  \once \override Stem.direction = #UP

  c16          
}
	  



% ****************************************************************
% end ly snippet
% ****************************************************************
