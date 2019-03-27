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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/song-splitpart.ly"
\sourcefileline 0
\version "2.19.21"
\header {
  texidoc="Festival song synthesis output supports
divided voices.
"
}
\include "festival.ly"

\score{
\festival #"song-splitpart.xml" { \tempo 4 = 100 }
<<
  \context Voice = "melody" {
    \relative {
      c'4
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
