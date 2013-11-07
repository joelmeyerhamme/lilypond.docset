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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/accidental-suggestions.ly"
\sourcefileline 0

\header {

 texidoc = "setting the @code{suggestAccidentals} will print
accidentals vertically relative to the note.  This is useful for
denoting Musica Ficta."
 
}

\version "2.12.0"
\paper {
  ragged-right = ##t
}

\relative c'' {
  \time 2/4 
  \set suggestAccidentals = ##t 
  cis^> gis'-|
  \override AccidentalSuggestion #'parenthesized = ##t
  cis,_"paren" gis'

}
  
  



% ****************************************************************
% end ly snippet
% ****************************************************************
