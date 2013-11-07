
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/43c-MultiStaff-DifferentKeysAfterBackup.xml

\header {
    texidoc = "A piano staff 
                            with different keys and clefs for each of its 
                            staves. The key and clef for the second staff is 
                            given only after a backward, just before the first
                            note of the second staff is given, but after the 
                            whole measure for staff 1 has been given."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative f' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4 f1 }

PartPOneVoiceTwo =  \relative b, {
    \numericTimeSignature\time 4/4  \clef "bass" \key d \major b1 }


% The score definition
\new PianoStaff <<
    \context Staff = "1" << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >> \context Staff = "2" <<
        \context Voice = "PartPOneVoiceTwo" { \PartPOneVoiceTwo }
        >>
    >>

