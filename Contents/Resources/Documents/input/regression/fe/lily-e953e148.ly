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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/system-overstrike.ly"
\sourcefileline 0
\version "2.12.0"
\header { texidoc = "By setting between-system-padding to a negative
value, it is possible to eliminate the anti-collision constraints.
Then  setting @code{between-system-space} to a low (nonzero) value,
print  systems in overstrike.

Unfortunately, this does not show in the colllated texinfo document. Run this example stand-alone to see the effect.
"
	  
}

\paper {
    ragged-bottom =##t
    between-system-padding = - 4\cm
    between-system-space = 3\mm
}

{
    c1 \break
    c'''1
}




% ****************************************************************
% end ly snippet
% ****************************************************************
