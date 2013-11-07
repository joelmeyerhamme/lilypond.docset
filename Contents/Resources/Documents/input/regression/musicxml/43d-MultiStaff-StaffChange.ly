
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/43d-MultiStaff-StaffChange.xml

\header {
    texidoc = "Staff changes in a piano staff. 
          The voice from the second staff has some notes/chords on the first 
          staff. The final two chords have some notes on the first, some on 
          the second staff."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 s1 | % 2
    R1 \bar "|."
    }

PartPOneVoiceTwo =  \relative a {
    \clef "bass" \key c \major \time 4/4 a8 [ \change Staff="1" e'8
    \change Staff="2" a,8 \change Staff="1" e'8 ] c'8 [ e,8 \change
    Staff="2" a,8 b'8 ] | % 2
    <c,, e g c>8 [ \change Staff="1" <c' e g>8 \change Staff="2" <c, e g
        c>8 \change Staff="2" <g' c e g>8 ] \change Staff="2" r2 \bar
    "|."
    }


% The score definition
\new PianoStaff <<
    \context Staff = "1" << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >> \context Staff = "2" <<
        \context Voice = "PartPOneVoiceTwo" { \PartPOneVoiceTwo }
        >>
    >>

