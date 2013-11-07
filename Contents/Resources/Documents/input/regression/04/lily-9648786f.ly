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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/ambitus.ly"
\sourcefileline 0
\header {
    texidoc = "Ambituses indicate pitch ranges for voices.

Accidentals only show up if they're not part of key
signature. @code{AmbitusNoteHead} grobs also have ledger lines.

"
}
\version "2.12.0"

\layout {
    ragged-right = ##t
    \context {
	\Voice
	\consists Ambitus_engraver
    }
}

\relative
<<
    \new Staff {  \time  2/4 c4 f' }
    \new Staff \relative {
	\time  2/4
	\key d \major
	cis as'
    }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
