
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/45f-Repeats-InvalidEndings.xml

\header {
    texidoc = "Some more nested repeats with 
          alternatives, where the MusicXML file does not make sense in the 
          first place. How well are applications able to cope with improper 
          repeats and alternatives?"
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
        R1 }
    \alternative { {
            | % 4
            R1 }
        } | % 5
    R1 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

