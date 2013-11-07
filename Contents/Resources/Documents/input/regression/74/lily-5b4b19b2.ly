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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/song-stanzas.ly"
\sourcefileline 0
\version "2.12.0"

\include "festival.ly"

\festival #"song-stanzas.xml" { \tempo 4 = 100 }
{
\time 3/4
\relative { c2 e4 g2. }
\addlyrics { play the game }
\addlyrics { speel het spel }
\addlyrics { joue le jeu }
}
#(ly:progress "song-stanzas")
#(ly:progress "~a" (ly:gulp-file "song-stanzas.xml"))



% ****************************************************************
% end ly snippet
% ****************************************************************