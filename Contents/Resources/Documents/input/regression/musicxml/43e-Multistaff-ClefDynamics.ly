
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/43e-Multistaff-ClefDynamics.xml

\header {
    texidoc = "A piano staff with dynamics and 
          clef changes, where each element (ffff, wedge and clef changes) 
          applies only to one voice or one staff, respectively."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 | % 1
    c4 \ffff b4 a4 g4 \p | % 2
    \key d \major a4 b4 cis4 d4 | % 3
    \clef "mezzosoprano" d4 cis4 b4 a4 | % 4
    R1 \bar "|."
    }

PartPOneVoiceTwo =  \relative a, {
    \clef "bass" \key c \major \time 4/4 a4 \< b4 c4 \! d4 | % 2
    \clef "treble" \key d \major fis'4 g4 a4 b4 a4 b4 cis4 d4 | % 4
    R1 \bar "|."
    }


% The score definition
\new PianoStaff <<
    \context Staff = "1" << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >> \context Staff = "2" <<
        \context Voice = "PartPOneVoiceTwo" { \PartPOneVoiceTwo }
        >>
    >>

