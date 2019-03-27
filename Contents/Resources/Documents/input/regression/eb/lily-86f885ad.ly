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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/lyric-combine-switch-voice-2.ly"
\sourcefileline 0
\header
{
texidoc = "switching voices in the middle of the lyrics is possible using @code{lyricsto}."
  }
\version "2.19.21"

<<
  \relative \new Voice = "lahlah" {
    c'4
    <<
      \new Voice = "alternative" {
        \voiceOne
	\override NoteColumn.force-hshift = #-3
	a'4 
      } 
      { \voiceTwo
        c,4
	\oneVoice
      } >>
    c4 c 
    
  }
  \new Lyrics \lyricsto "lahlah" {
    \set associatedVoice = alternative
    two  
    \set associatedVoice = lahlah
    two this
  } 
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
