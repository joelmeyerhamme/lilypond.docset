
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/61d-Lyrics-Melisma.xml

\header {
    texidoc = "How to treat lyrics and slurred 
          notes. Normally, a slurred group of notes is assigned only one lyrics 
          syllable."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 c4 ( <a e'>4 c4 <c e>4 ) | % 2
    c4 ~ c4 c4 ( e4 ) \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { Me -- lis -- "ma. " __ }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

