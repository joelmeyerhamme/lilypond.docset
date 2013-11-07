
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/13a-KeySignatures.xml

\header {
    texidoc = "Various key signature: from 11
            flats to 11 sharps (each one first one measure in major, then one
            measure in minor)"
    title = "Different Key signatures"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key ases \major \time 2/4 c2 | % 2
    \key fes \minor c2 | % 3
    \key eses \major c2 | % 4
    \key ces \minor c2 | % 5
    \key beses \major c2 | % 6
    \key ges \minor c2 | % 7
    \key fes \major c2 | % 8
    \key des \minor c2 | % 9
    \key ces \major c2 | \barNumberCheck #10
    \key as \minor c2 | % 11
    \key ges \major c2 | % 12
    \key es \minor c2 | % 13
    \key des \major c2 | % 14
    \key bes \minor c2 | % 15
    \key as \major c2 | % 16
    \key f \minor c2 | % 17
    \key es \major c2 | % 18
    \key c \minor c2 | % 19
    \key bes \major c2 | \barNumberCheck #20
    \key g \minor c2 | % 21
    \key f \major c2 | % 22
    \key d \minor c2 | % 23
    \key c \major c2 | % 24
    \key a \minor c2 | % 25
    \key g \major c2 | % 26
    \key e \minor c2 | % 27
    \key d \major c2 | % 28
    \key b \minor c2 | % 29
    \key a \major c2 | \barNumberCheck #30
    \key fis \minor c2 | % 31
    \key e \major c2 | % 32
    \key cis \minor c2 | % 33
    \key b \major c2 | % 34
    \key gis \minor c2 | % 35
    \key fis \major c2 | % 36
    \key dis \minor c2 | % 37
    \key cis \major c2 | % 38
    \key ais \minor c2 | % 39
    \key gis \major c2 | \barNumberCheck #40
    \key eis \minor c2 | % 41
    \key dis \major c2 | % 42
    \key bis \minor c2 | % 43
    \key ais \major c2 | % 44
    \key fisis \minor c2 | % 45
    \key eis \major c2 | % 46
    \key cisis \minor c2 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

