
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/11b-TimeSignatures-NoTime.xml

\header {
    texidoc = "A score without 
                            a time signature (but with a key and clefs)"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative f' {
    \clef "treble" \key c \major f1 }

PartPOneVoiceTwo =  \relative b, {
    \clef "bass" \key c \major b1 }


% The score definition
\new PianoStaff <<
    \context Staff = "1" << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >> \context Staff = "2" <<
        \context Voice = "PartPOneVoiceTwo" { \PartPOneVoiceTwo }
        >>
    >>

