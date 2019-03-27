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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/fill-line-test.ly"
\sourcefileline 0
\version "2.16.0"

\header {

  texidoc = "The fill-line markup command should align texts in
  columns. For example, the characters in the center should form one
  column."

}
\paper {
  line-width = 15\cm
  bookTitleMarkup = \markup {
  \column {
   \fill-line {
   		1
   }
   \fill-line {
   		1
   		2
   }
   \fill-line {
   		1
   		2
   		3
   }
   \fill-line {
   		1
   		2
   		3
   		4
   }
   \fill-line {
   		1
   		2
   		3
   		4
   		5
   }
   \fill-line {
   		1
   		2
   		3
   		4
   		5
   		6
   }
   \fill-line {
   		1
   		2
   		3
   		4
   		5
   		6
   		7
   }
   \fill-line {
   		1
   		2
   		3
   		4
   		5
   		6
   		7
   		8
   }
   \fill-line {
   		1
   		2
   		3
   		4
   		5
   		6
   		7
   		8
   		9
   }
   \fill-line {
   		1
   		2
   		3
   		4
   		5
   		6
   		7
   		8
   		9
   		10
   }
   \fill-line {
   		1
   		2
   		3
   		4
   		5
   		6
   		7
   		8
   		9
   		10
   		11
   }
   \fill-line {
   		1
   		2
   		3
   		4
   		5
   		6
   		7
   		8
   		9
   		10
   		11
   		12
   }
   \fill-line {
   		1
   		2
   		3
   		4
   		5
   		6
   		7
   		8
   		9
   		10
   		11
   		12
   		13
   }
   \fill-line {
   		1
   		2
   		3
   		4
   		5
   		6
   		7
   		8
   		9
   		10
   		11
   		12
   		13
   		14
   }
   %{
   \fill-line {
   		abcdefghijklmnopqrstuvwxyz0123456789
   		abcdefghijklmnopqrstuvwxyz0123456789
   		abcdefghijklmnopqrstuvwxyz0123456789
   }
   %}
   
   }
  }
}
\book {
	\score { \new Staff \relative c''{
		\repeat unfold 4 c1
	}
	\layout {}
}}



% ****************************************************************
% end ly snippet
% ****************************************************************
