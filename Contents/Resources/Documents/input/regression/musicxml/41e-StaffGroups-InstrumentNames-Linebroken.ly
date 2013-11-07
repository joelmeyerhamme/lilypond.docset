
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/41e-StaffGroups-InstrumentNames-Linebroken.xml

\header {
    texidoc = "Part names and abbreviations can 
          contain line breaks."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b' {
    \clef "treble" \key c \major \time 4/4 b1 | % 2
    b1 | % 3
    b1 | % 4
    b1 | % 5
    b1 | % 6
    b1 | % 7
    b1 | % 8
    b1 | % 9
    b1 | \barNumberCheck #10
    b1 | % 11
    b1 | % 12
    b1 | % 13
    b1 | % 14
    b1 | % 15
    b1 | % 16
    b1 | % 17
    b1 | % 18
    b1 | % 19
    b1 | \barNumberCheck #20
    b1 | % 21
    b1 | % 22
    b1 | % 23
    R1 \bar "|."
    }


% The score definition
\new Staff <<
    \set Staff.instrumentName = \markup { \column { \line {"Long"} \line {"Staff"} \line {"Name"} } }
    \set Staff.shortInstrumentName = \markup { \column { \line {"St."} \line {"Nm."} } }
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

