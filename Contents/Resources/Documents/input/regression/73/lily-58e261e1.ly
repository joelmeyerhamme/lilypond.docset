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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/song-melisma.ly"
\sourcefileline 0
\version "2.12.0"

\include "festival.ly"

\festival #"song-melisma.xml" { \tempo 4 = 100 }
\relative c''
{
<<
  \context Voice = "lala" {
    \time 3/4
    f4 g8
    \melisma
    f e f
    \melismaEnd
    e2
  }
  \lyricsto "lala" \new Lyrics {
    la di __ daah
  }
>>
}
#(ly:progress "song-melisma")
#(ly:progress "~a" (ly:gulp-file "song-melisma.xml"))



% ****************************************************************
% end ly snippet
% ****************************************************************
