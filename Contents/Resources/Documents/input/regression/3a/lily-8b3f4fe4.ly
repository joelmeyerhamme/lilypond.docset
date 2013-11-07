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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/tuplet-gap.ly"
\sourcefileline 0
\header {

  texidoc = "The size of the tuplet bracket gap is adjusted to the
    width of the text."

}

\version "2.12.0"

\layout {
  indent = 0.0\mm
  ragged-right = ##t
}


\relative c'' {
  \override TupletNumber #'text = #tuplet-number::calc-fraction-text
  \times  17/12  { c8 c4 c8 c8}
}




% ****************************************************************
% end ly snippet
% ****************************************************************
