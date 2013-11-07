
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/13c-KeySignatures-NonTraditional.xml

\header {
    texidoc = "Non-traditional key signatures,
          where each alteration is separately given. Here we have (f sharp, 
          a flat, b flat) and (c flatflat, g sharp sharp, d flat, b sharp, f 
          natural), where in the second case an explicit octave is given for 
          each alteration."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \set Staff.keySignature = #`(( 6 . ,FLAT ) ( 5 .
    ,FLAT ) ( 3 . ,SHARP )) \time 2/4 c2 | % 2
    \set Staff.keySignature = #`((( 2 . 5 ) . ,NATURAL ) (( 1 . 6 ) . ,SHARP ) (( 0 . 1 ) . ,FLAT ) (( -1 . 4 ) . ,DOUBLE-SHARP ) (( -2 . 0 ) . ,DOUBLE-FLAT ))
    c2 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

