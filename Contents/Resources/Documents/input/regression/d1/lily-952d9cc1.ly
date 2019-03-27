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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/spacing-accidental-tie.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Horizontal spacing works as expected on tied notes with
accidentals. No space is reserved for accidentals that end up not being printed,
but accidentals that are printed don't collide with anything."
}

\paper { ragged-right = ##t }

\relative
{ \time 1/4
  cis'16 cis cis cis~
  cis cis cis cis
  c c c c \break

  cis16 cis cis cis~
  cis! cis cis cis
  c c c c \break

  cis cis cis cis~ \break
  cis
}



% ****************************************************************
% end ly snippet
% ****************************************************************
