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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/spacing-accidental-tie.ly"
\sourcefileline 0
\version "2.12.0"

\header {
  texidoc = "Horizontal spacing works as expected on tied notes with
accidentals. No space is reserved for accidentals that end up not being printed,
but accidentals that are printed don't collide with anything."
}

\paper { ragged-right = ##t }

\relative c'
{ \time 1/4
  cis16 cis cis cis~
  cis cis cis cis
  c c c c \break

  cis16 cis cis cis~
  cis! cis cis cis
  c c c c \break

  cis cis cis cis~ \break
  cis
}



% ****************************************************************
% end ly snippet
% ****************************************************************
