
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/43b-MultiStaff-DifferentKeys.xml

\header {
    texidoc = "A piano staff 
                            with different keys and clefs for each of its 
                            staves. The keys and clefs for both staves are given 
                            at the very beginning of the measure."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative f' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4 f1 }

PartPOneVoiceTwo =  \relative b, {
    \clef "bass" \key d \major \numericTimeSignature\time 4/4 b1 }


% The score definition
\new PianoStaff <<
    \context Staff = "1" << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >> \context Staff = "2" <<
        \context Voice = "PartPOneVoiceTwo" { \PartPOneVoiceTwo }
        >>
    >>

