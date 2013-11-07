%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/spacing-folded-clef2.ly"
\sourcefileline 0
\version "2.12.0"
\header {

texidoc = "A clef can be folded below notes in a different staff, if
there is space enough. With @code{Paper_column} stencil callbacks we
can show where columns are in the score."
}

\layout {
    ragged-right = ##t

    \context {
	\Score
	\override NonMusicalPaperColumn  #'stencil = #ly:paper-column::print
	\override PaperColumn  #'stencil = #ly:paper-column::print	  
	\override NonMusicalPaperColumn #'font-family = #'roman
	\override PaperColumn #'font-family = #'roman	  

    }
}
		   
\relative c'' <<
    \new Staff  { c4 c4 c4 c \bar "|." }
    \new Staff { \clef bass c,2 \clef treble  c'2 }
>>




% ****************************************************************
% end ly snippet
% ****************************************************************
