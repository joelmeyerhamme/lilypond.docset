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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/slur-tilt.ly"
\sourcefileline 0
\header {

    texidoc = "The attachment point for strongly sloped slurs is
shifted horizontally slightly. Without this correction, slurs will
point into one note head, and point over another note head."
 
}
\layout {
    ragged-right = ##t
}
\version "2.12.0"

\relative c'' {
    \time 2/4
    g8( f)
    a( f)
    b( f)
    c'( f,)

    g16( f)
    a( f)
    b( f)
    c'16( f,)
    

}



% ****************************************************************
% end ly snippet
% ****************************************************************
