
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/61k-Lyrics-SpannersExtenders.xml

\header {
    texidoc = "Lyrics spanners: continued 
            syllables and extenders, possibly spanning multiple notes. The 
            intermediate notes do not have any <lyric> 
            element."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 c4 c4 c4 c4 | % 2
    c4 c4 c4 c4 | % 3
    c4 c4 c4 r4 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { "A " __ \skip4 b -- \skip4
    \skip4 "CC " __ \skip4 \skip4 "e " __ \skip4 \skip4 }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

