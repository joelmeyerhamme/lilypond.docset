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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/alignment-vertical-manual-setting.ly"
\sourcefileline 0
\header {

  texidoc = "Alignments may be changed per system by setting
  @code{alignment-distances} in the @code{line-break-system-details}
  property"

}

\version "2.19.21"

\book {
  \score {
    \relative \new StaffGroup <<
      \new Staff { c''1 c c c }
      \new Staff { c c c c }
      \new Staff { 
	\overrideProperty
	Score.NonMusicalPaperColumn.line-break-system-details
	#'((alignment-distances . (#f 20)))
	c1 \break
	\overrideProperty
	Score.NonMusicalPaperColumn.line-break-system-details
	#'((alignment-distances . (5 15)))
	c1 \break
	\overrideProperty
	Score.NonMusicalPaperColumn.line-break-system-details
	#'((alignment-distances . (15 5)))
	c1 c
      }
    >>
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
