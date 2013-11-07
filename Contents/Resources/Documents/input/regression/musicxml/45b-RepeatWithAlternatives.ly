
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/45b-RepeatWithAlternatives.xml

\header {
    texidoc = "A simple repeat with two 
          alternative endings (volta brackets)."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \repeat volta 2 {
        \clef "treble" \key c \major \time 4/4 c1 }
    \alternative { {
            | % 2
            c1 }
        {
            | % 3
            c1 }
        } | % 4
    c1 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

