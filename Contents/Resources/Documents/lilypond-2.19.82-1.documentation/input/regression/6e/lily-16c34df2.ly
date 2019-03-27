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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/newaddlyrics-music-identifiers.ly"
\sourcefileline 0
\version "2.19.21"

\header {
	texidoc = "addlyrics do not need braces around their arguments,
in particular if the arguments are variables."
}

m = \relative { c'4 d }
l = \lyricmode { A B }

% addlyrics takes music expressions as well as music identifiers. The following
% two staves should produce the same output:
\new Staff { {\m} \addlyrics {\l} }
\new Staff { \m \addlyrics \l }



% ****************************************************************
% end ly snippet
% ****************************************************************
