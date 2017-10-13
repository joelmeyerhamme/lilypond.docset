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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/song-associated-voice.ly"
\sourcefileline 0
\version "2.16.0"
\header {
  texidoc="Festival song synthesis output supports
associated voices.
"
}


\include "festival.ly"

\festival #"song-associated-voice.xml" { \tempo 4 = 100 }
\relative c'
{
<< \context Voice = melody {
     \time 3/4
     c2 e4 g2.
  }
  \new Lyrics \lyricmode {
    \set associatedVoice = #"melody"
    play2 the4 game2.
  } >>
}
#(ly:progress "song-associated-voice")
#(ly:progress "~a" (ly:gulp-file "song-associated-voice.xml"))



% ****************************************************************
% end ly snippet
% ****************************************************************