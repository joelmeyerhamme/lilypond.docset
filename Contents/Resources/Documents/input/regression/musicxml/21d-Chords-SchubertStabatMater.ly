
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/21d-Chords-SchubertStabatMater.xml

\header {
    texidoc = "Chords in the 
                            second measure, after several ornaments in the first 
                            measure and a p at the beginning of the second 
                            measure."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPZeroVoiceOne =  \relative f' {
    \clef "treble" \key as \major \time 4/4 | % 1
    f1 -\markup{ \bold {Largo} } \fp ^\fermata _> | % 2
    | % 2
    <f as>4. \p <f as>8 <g bes>4 <g bes>4 }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPZeroVoiceOne" { \PartPZeroVoiceOne }
        >>
    >>

