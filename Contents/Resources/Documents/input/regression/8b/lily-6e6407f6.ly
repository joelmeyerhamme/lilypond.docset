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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/song-tempo.ly"
\sourcefileline 0
\version "2.19.21"
\header {
  texidoc="Festival song synthesis output supports
changing tempo in the middle of a piece.
"
}
\include "festival.ly"

\festival #"song-tempo.xml" { \tempo 4=90 }
{
\time 3/4
\relative { c'4 e g \tempo 4=60 c, e g }
\addlyrics { do re mi do re mi }
}
#(ly:progress "song-tempo")
#(ly:progress "~a" (ly:gulp-file "song-tempo.xml"))



% ****************************************************************
% end ly snippet
% ****************************************************************
