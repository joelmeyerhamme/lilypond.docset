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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/song-splitpart.ly"
\sourcefileline 0
\version "2.12.0"

\include "festival.ly"

\score{
\festival #"song-splitpart.xml" { \tempo 4 = 100 }
<<
  \context Voice = "melody" {
    \relative c' {
      c4
      <<
        { \voiceOne c8 e }
        \context Voice = splitpart { \voiceTwo c4 }
      >>
      \oneVoice c4 c | c
    }
  }
  \new Lyrics \lyricsto "melody" { we shall not o- ver- come }
  \new Lyrics \lyricsto "splitpart" { will }
>> }
#(ly:progress "song-splitpart")
#(ly:progress "~a" (ly:gulp-file "song-splitpart.xml"))



% ****************************************************************
% end ly snippet
% ****************************************************************