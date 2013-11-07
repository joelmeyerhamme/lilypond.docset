
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/03c-Rhythm-DivisionChange.xml

\header {
    texidoc = "Although uncommon, the divisions
            of a quarter note can change somewhere in the middle of a MusicXML
            file. Here, the first half measure uses a division of 1, which
            then changes to 8 in the middle of the first measure and to 38
            in the middle of the second measure."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 c4 c4 c4 c4 | % 2
    c2 c2 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

