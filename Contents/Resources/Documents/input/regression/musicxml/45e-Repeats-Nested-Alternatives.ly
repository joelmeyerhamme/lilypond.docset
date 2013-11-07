
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/45e-Repeats-Nested-Alternatives.xml

\header {
    texidoc = "Some more nested repeats with 
          alternatives. The barline between measure 7 and 8 will probably be 
          messed up! (Should be a repeat on both sides!)"
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
                R1 }
            } | % 4
        R1 \repeat volta 2 {
            | % 5
            R1 }
        | % 6
        R1 }
    \alternative { {
            | % 7
            R1 }
        } \repeat volta 2 {
        | % 8
        R1*2 }
    | \barNumberCheck #10
    R1 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

