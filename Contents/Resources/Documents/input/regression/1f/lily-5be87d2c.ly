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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/markup-frame-text.ly"
\sourcefileline 0
\version "2.17.23"

\header {

  texidoc = "Text is framed properly with @code{\\box},
@code{\\circle}, @code{\\oval} and @code{\\ellipse}"

}

\markup \column {
	\line { \box { text in boxes "1" "12" "123" } }
	\line { \circle { text in circles "1" "12" "123" } }
	\line { \oval { text in ovals "1" "12" "123" } }
	\line { \ellipse { text in ellipses "1" "12" "123" } }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
