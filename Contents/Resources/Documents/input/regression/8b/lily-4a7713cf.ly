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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/spacing-rest.ly"
\sourcefileline 0

\version "2.12.0"
\header {
  texidoc = "Rests get a little less space, since they are narrower.
However, the quarter rest in feta font is relatively wide, causing this 
effect to be very small.
"
}

\layout {
  ragged-right = ##t
}
\relative c'' \context Staff {
  \time 12/4
  r4 c4 c4 c4 r4 r4 c4
}






% ****************************************************************
% end ly snippet
% ****************************************************************
