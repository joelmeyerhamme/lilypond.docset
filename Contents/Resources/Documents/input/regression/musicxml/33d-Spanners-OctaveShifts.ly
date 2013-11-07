
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/33d-Spanners-OctaveShifts.xml

\header {
    texidoc = "All types of octave shifts (15ma,
            15mb, 8va, 8vb)"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 4/4 a8 [ c8 \ottava #2 a''8
    \ottava #0 \ottava #-2 c,,,,8 ] b8 [ \ottava #0 \ottava #1 a'''8 ] a8
    [ \ottava #0 \ottava #-1 b,,16 c16 ] \ottava #0 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

