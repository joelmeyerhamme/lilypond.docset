
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/24d-AfterGrace.xml

\header {
    texidoc = "Some grace notes and after-graces
            (indicated by steal-time-previous and steal-time-next)."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e'' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4
    \afterGrace { e2 } { g16 } \afterGrace { \grace { a16 a16 } e2 } { g16
        [ a16 ] } }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

