%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/relative-repeat.ly"
\sourcefileline 0
\header {
  texidoc = "Using repeat unfold within a relative block gives a
different result from writing the notes out in full.  The first
system has all the notes within the stave.  In the second, the
notes get progressively higher."
  }
\version "2.19.21"

\relative {
  c''1^"Using unfold"
  \repeat unfold 3 { f,2^"Repeated" bes2 }
  \alternative { { a2_"Alt1" c } { e_"Alt2" c } { b_"Alt3" d } }
}

\relative {
  c''1^"The same notes, written out"
  f,2 bes2 a2 c f2 bes2 e c f2 bes2 b d
}



% ****************************************************************
% end ly snippet
% ****************************************************************
