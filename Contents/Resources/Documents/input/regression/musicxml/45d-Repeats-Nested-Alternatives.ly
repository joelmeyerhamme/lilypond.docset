
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/45d-Repeats-Nested-Alternatives.xml

\header {
    texidoc = "Nested repeats, each with 
          alternative endings."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \repeat volta 2 {
        \repeat volta 2 {
            \clef "treble" \key c \major \time 4/4 R1 }
        \alternative { {
                | % 2
                R1 }
            {
                | % 3
                R1*3 }
            {
                | % 6
                R1 }
            } | % 7
        R1*3 }
    \alternative { {
            | \barNumberCheck #10
            R1 }
        {
            | % 11
            R1 }
        } | % 12
    R1 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

