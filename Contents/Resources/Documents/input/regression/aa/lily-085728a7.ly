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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/spacing-folded-clef2.ly"
\sourcefileline 0
\version "2.19.21"
\header {

texidoc = "A clef can be folded below notes in a different staff, if
there is space enough. With @code{Paper_column} stencil callbacks we
can show where columns are in the score."
}

\layout {
    ragged-right = ##t

    \context {
	\Score
	\override NonMusicalPaperColumn.stencil = #ly:paper-column::print
	\override PaperColumn.stencil = #ly:paper-column::print	  
	\override NonMusicalPaperColumn.font-family = #'roman
	\override PaperColumn.font-family = #'roman	  

    }
}
		   
\relative <<
    \new Staff  { c''4 c4 c4 c \bar "|." }
    \new Staff { \clef bass c,2 \clef treble  c'2 }
>>




% ****************************************************************
% end ly snippet
% ****************************************************************
