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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/tuplet-rest.ly"
\sourcefileline 0

\version "2.12.0"
\header {

  texidoc = "Tuplets may contain rests. "

}


\context Voice  \relative c'' {
  \time 2/4
  \times 2/3 { r c,,, c''' }
  \times 2/3 { r c c  }
  \times 2/3 { r c r }
  \times 2/3 { r r r }
  \times 2/3 { r c e }
  \times 2/3 { c r e }
  \times 2/3 { r c g }
  \times 2/3 { c r g }
}






% ****************************************************************
% end ly snippet
% ****************************************************************
