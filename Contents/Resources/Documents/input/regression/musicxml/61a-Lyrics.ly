
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/61a-Lyrics.xml

\header {
    texidoc = "Some notes with simple lyrics: 
            Syllables, notes without a syllable, syllable 
            spanners."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 4/4 a4 a4 a4 a4 | % 2
    a4 a4 a4 a4 | % 3
    a4 a4 a2 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { Tra -- la -- li Ja! \skip4 Tra
    -- \skip4 ra! \skip4 Bah! \skip4 }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

