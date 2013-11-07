
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/02a-Rests-Durations.xml

\header {
    texidoc = "All different rest lengths: A 
          two-bar multi-measure rest, a whole rest, a half, etc. until a 
          128th-rest; Then the same with dotted durations."
    title = "Rest unit test"
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 R1*3 | % 4
    r2 r4 r8 r16 r32 r64 r128 r128 | % 5
    r2. r4 | % 6
    r4. r8. r16. r32. r64. r128.*4/3 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

