%% Generated by lilypond-book.py
%% Options: [exampleindent=0.4\in,indent=0\mm,line-width=6\in]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 6\in
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "include.ly"
\sourcefileline 0
\version "2.16.0"
\include "melody.ly"
\score {
	\melody
}



% ****************************************************************
% end ly snippet
% ****************************************************************