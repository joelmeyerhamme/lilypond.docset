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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/tie-chord-broken-extremal.ly"
\sourcefileline 0
\version "2.12.0"

\header { texidoc = "

Tie detail property multi-tie-region-size controls how many variations
are tried for the extremal ties in a chord.


" }

\relative c'' {
  \time 4/4 <bis bis>1 ~ \break

  \override Tie #'(details multi-tie-region-size) = #1
  \time 3/4 <bis bis>2.~ \break
  \time 4/4 <bis bis>1 
}

\paper {
  ragged-right = ##t
  debug-tie-scoring = ##t
}



% ****************************************************************
% end ly snippet
% ****************************************************************
