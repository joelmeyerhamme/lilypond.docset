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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/multi-measure-rest-tweaks.ly"
\sourcefileline 0
\header {
  texidoc = "Multi-measure rests standard values can be tweaked."
}

\version "2.17.6"

\markup "Use non-standard multi-measure rests:"
\new Staff {
  \override MultiMeasureRest.usable-duration-logs = #(iota 2 1)
  \time 1/4 R4
  \time 2/4 R2
}
\markup "Round up to the longer rest:"
\new Staff {
  \override MultiMeasureRest.round-up-to-longer-rest = ##t
  \time 3/2 R1.
  \time 7/2 R\breve..
}
\markup "Round up to the longer rest only in specified time signatures:"
\new Staff {
  \override MultiMeasureRest.round-up-exceptions = #'((3 . 2))
  \time 3/2 R1.
  \time 7/2 R\breve..
  \time 3/2 R1.
}



% ****************************************************************
% end ly snippet
% ****************************************************************
