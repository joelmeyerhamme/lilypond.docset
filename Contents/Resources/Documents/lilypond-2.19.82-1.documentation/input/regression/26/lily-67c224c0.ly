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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/part-combine-solo-end.ly"
\sourcefileline 0
\header {

    texidoc = "SOLO is printed even if the solo voice ends before the
    other one. Unfortunately, the multi-rest of the 1st voice (which
    is 2 bars longer than the 2nd voice) does not get printed."

}

\version "2.16.0"
\layout { ragged-right = ##t }

<<
    \new Staff
    \partcombine
    { R1 * 2 }
    { c'8\> c'\! r2.  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************