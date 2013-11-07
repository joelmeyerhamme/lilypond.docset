
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/24e-GraceNote-StaffChange.xml

\header {
    texidoc = "A grace note on a different 
          staff than the actual note."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e'' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4 e2
    \change Staff="2" \grace { g16 [ a16 ] } e2 \change Staff="1" }


% The score definition
\new PianoStaff <<
    \context Staff = "1" << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >> \context Staff = "2" <<
        >>
    >>

