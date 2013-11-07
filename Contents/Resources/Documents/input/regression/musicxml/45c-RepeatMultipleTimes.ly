
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/45c-RepeatMultipleTimes.xml

\header {
    texidoc = "Repeats can also be nested."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \repeat volta 3 {
        \clef "treble" \key c \major \time 4/4 R1 \repeat volta 5 {
            | % 2
            R1*2 }
        | % 4
        R1*4 }
    | % 8
    R1 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

