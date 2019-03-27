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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/paper-margins.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Paper margin settings do not have to be complete.
Missing values are added automatically.  If no paper settings
are specified, default values are used."
}

someNotes = \relative { \repeat unfold 40 { c'4 d e f } }

\paper {
  #(set-paper-size (ly:get-option 'paper-size))
}

\book {
  \score { \someNotes }
}




% ****************************************************************
% end ly snippet
% ****************************************************************
