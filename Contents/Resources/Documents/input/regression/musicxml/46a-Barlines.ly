
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/46a-Barlines.xml

\header {
    texidoc = "Different types of (non-repeat) 
          barlines: default (no setting), regular, dotted, dashed, heavy,
          light-light, light-heavy, heavy-light, heavy-heavy, tick, short, 
          none."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 R1*2 \bar "|"
    | % 3
    R1 \bar ":"
    | % 4
    R1 \bar "dashed"
    | % 5
    R1 \bar "|"
    | % 6
    R1 \bar "||"
    | % 7
    R1 \bar "|."
    | % 8
    R1 \bar ".|"
    | % 9
    R1 \bar ".|."
    | \barNumberCheck #10
    R1 \bar "'"
    | % 11
    R1 \bar "'|"
    | % 12
    R1 \bar ""
    | % 13
    R1 }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

