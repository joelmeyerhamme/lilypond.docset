
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/02b-Rests-PitchedRests.xml

\header {
    texidoc = "Rests can have 
                            explicit pitches, where they are displayed. The 
                            first rest uses no explicit position and should use 
                            the default position, all others are explicitly 
                            positioned somewhere else."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e' {
    \clef "treble" \key c \major \time 5/4 r4 e4 \rest f'4 \rest a,,4
    \rest c''4 \rest }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

