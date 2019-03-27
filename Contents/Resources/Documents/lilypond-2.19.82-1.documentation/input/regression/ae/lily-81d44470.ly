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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/song-skip-noword.ly"
\sourcefileline 0
\version "2.19.21"
\header {
  texidoc = "Festival song synthesis output supports
lyrics which are not complete words.
"
}
\include "festival.ly"
#(*skip-word* #f)

\festival #"song-skip-noword.xml" { \tempo 4 = 100 }
\relative { c'4 c g' }
\addlyrics {
  twin -- \skip 4
  kle
}

#(ly:progress "song-skip-noword")
#(ly:progress "~a" (ly:gulp-file "song-skip-noword.xml"))

#(*skip-word* "-skip-")



% ****************************************************************
% end ly snippet
% ****************************************************************