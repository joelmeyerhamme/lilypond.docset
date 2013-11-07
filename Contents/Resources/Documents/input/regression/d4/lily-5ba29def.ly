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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/lyric-melisma-manual.ly"
\sourcefileline 0
\header {

  texidoc = "Melisma's may be entered manually by substituting
  @code{_} for lyrics on notes that are part of the melisma."

}

\version "2.12.0"
\paper {
  ragged-right = ##t
}

\relative {
  \set melismaBusyProperties = #'()
  c d( e) f f( e) e e  }
\addlyrics
 { Ky -- _ _ ri __ _ _ _  e }



% ****************************************************************
% end ly snippet
% ****************************************************************
