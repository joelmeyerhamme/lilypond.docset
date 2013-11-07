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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/tie-manual.ly"
\sourcefileline 0
\header {

  texidoc = "Tie formatting may be adjusted manually, by setting the
@code{tie-configuration} property. The override should be placed at
the second note of the chord.

You can leave a Tie alone by introducing a non-pair value
(eg. @code{#t}) in the @code{tie-configuration} list.

"

}

\version "2.12.0"

\layout {
  ragged-right = ##t
}


\relative c'' {
  
  <b d f g>~

  
  \once \override TieColumn #'tie-configuration =
     #'((0 . -1)  (2 . -1) (5.5 . 1) (7 . 1))

  <b d f g>
} 



% ****************************************************************
% end ly snippet
% ****************************************************************
