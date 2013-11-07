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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/collision-seconds.ly"
\sourcefileline 0
\version "2.12.0"

\header {
  texidoc = "Seconds do not confuse the collision algorithm too much. The best
way to format this would be to merge the two Ds, but we will be happy for now
if the upstem D does not collide with the downstem C."
}


<< d' \\ <c' d'> >>



% ****************************************************************
% end ly snippet
% ****************************************************************
