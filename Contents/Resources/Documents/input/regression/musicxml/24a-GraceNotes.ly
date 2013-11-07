
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/24a-GraceNotes.xml

\header {
    texidoc = "Different kinds of grace notes: 
          acciaccatura, appoggiatura; beamed grace notes; grace notes with 
          accidentals; different durations of the grace notes."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative d'' {
    \clef "treble" \key c \major \time 4/4 \grace { d16 } c4 \grace { e16
        [ d16 ] } c4 \grace { d16 } c4 \grace { d8 } c4 | % 2
    \acciaccatura { d16 } c4 \grace { e16 [ d16 ] } c2 \acciaccatura { d16
        } c8 [ \afterGrace { \acciaccatura { d16 } c8 ] } { e16 } | % 3
    \grace { e16 } <f, c'>4 \grace { dis'4 } c4 \grace { des4 as4 } c4 c4
    \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

