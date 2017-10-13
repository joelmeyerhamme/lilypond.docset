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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/dynamics-line.ly"
\sourcefileline 0

\version "2.16.0"
\header{
  texidoc=" Dynamics appear below or above the staff.  If multiple
dynamics are linked with (de)crescendi, they should be on the same
line. Isolated dynamics may be forced up or down.
 "
}



\relative c''{
  a1^\sfz
  a1\fff\> c,,\!\pp a'' a\p

  %% We need this to test if we get two Dynamic line spanners
  a

  %% because do_removal_processing ()
  %% doesn't seem to post_process elements
  d\f

  a

}




% ****************************************************************
% end ly snippet
% ****************************************************************