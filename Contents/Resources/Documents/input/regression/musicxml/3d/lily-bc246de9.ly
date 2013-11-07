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
\sourcefilename "out-www/61j-Lyrics-Elisions.ly"
\sourcefileline 0

\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/61j-Lyrics-Elisions.xml

\header {
    texidoc = "Multiple lyrics syllables 
          assigned to a single note are implemented either using a space in 
          the lyrics or by using the <elision> lyrics element. This 
          testcase checks both of them. First, a note with on syllable is
          given, then a note with two syllables separated by a spcae and finally
          a note with two and one with three syllables implemented using 
          <elision> is given."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 c4 c4 c4 c4 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { a "b c" "d e" "f g h" }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>




% ****************************************************************
% end ly snippet
% ****************************************************************
