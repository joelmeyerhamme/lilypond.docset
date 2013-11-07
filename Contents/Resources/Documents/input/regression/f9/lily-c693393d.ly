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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/phrasing-slur-dash.ly"
\sourcefileline 0
\version "2.12.0"
\header { texidoc = "
The appearance of phrasing slurs may be changed from solid to dotted or dashed.
"
}

\relative c'{
  c\( d e  c\) |
  \phrasingSlurDotted
  c\( d e  c\) |
  \phrasingSlurDashed
  c\( d e  c\) |
  \override PhrasingSlur #'dash-period = #2.0
  \override PhrasingSlur #'dash-fraction = #0.4
  c\( d e  c\) |
  \phrasingSlurSolid
  c\( d e  c\) |
}









% ****************************************************************
% end ly snippet
% ****************************************************************