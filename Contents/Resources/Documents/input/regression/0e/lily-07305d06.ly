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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/trill-spanner-chained.ly"
\sourcefileline 0
\version "2.12.3"
\header {
  texidoc = "Chained trills end at the next trill or barline.
Collisions can be prevented by overriding @code{bound-details}.
"
}

\paper { ragged-right = ##f }

\relative c'' {
  g8 f\startTrillSpan ~
  f8 g\stopTrillSpan \startTrillSpan ~
  g8 r\stopTrillSpan r4
  \once \override TrillSpanner #'to-barline = ##t
  c1\startTrillSpan ~
  c1
  \once \override TrillSpanner #'(bound-details right padding) = #1.2
  c1\stopTrillSpan \startTrillSpan
  c1\stopTrillSpan\startTrillSpan
}



% ****************************************************************
% end ly snippet
% ****************************************************************
