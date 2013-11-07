
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/71a-Chordnames.xml

\header {
    texidoc = "A normal staff with several 
          (complex) chord names displayed."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 4/4 | % 1
    a4 a4 a4 a4 | % 2
    | % 2
    a4 a4 a4 a4 \bar "|."
    }

PartPOneVoiceOneChords =  \chordmode {
    | % 1
    c4:5 c4:maj7.11+ b4:7.5+.9+ es4:5.2 | % 2
    | % 2
    g4:m5 dis4:maj7 a4:dim7 a4:aug5 }


% The score definition
\new Staff <<
    \context ChordNames = "PartPOneVoiceOneChords" \PartPOneVoiceOneChords
    \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

