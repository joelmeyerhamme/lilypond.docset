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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/song-repetition.ly"
\sourcefileline 0
\version "2.12.0"

\include "festival.ly"

\score{
\festival #"song-repetition.xml" { \tempo 4 = 100 }
<<
  \context Voice = melody \relative c' {
    c2 e4 r4 | g2 e | c1 |
    \context Voice = verse \repeat volta 2 {c4 d e f | g1 | }
    a2 b | c1}
  \lyricsto melody  \context Lyrics = mainlyrics \lyricmode {
    do mi sol mi do
    la si do }
  \lyricsto verse \context Lyrics = mainlyrics \lyricmode {
   do re mi fa sol }
  \lyricsto verse \context Lyrics = repeatlyrics \lyricmode {
   dodo rere mimi fafa solsol }
>>
}
#(ly:progress "song-repetition")
#(ly:progress "~a" (ly:gulp-file "song-repetition.xml"))



% ****************************************************************
% end ly snippet
% ****************************************************************