
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/13d-KeySignatures-Microtones.xml

\header {
    texidoc = "Non-traditional key signatures
          with microtone alterations: (g flat-and-a-half,
          a flat, b half-flat, c natural, d half-sharp, e sharp, f 
          sharp-and-a-half)."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \set Staff.keySignature = #`(( 3 . ,THREE-Q-SHARP ) (
    2 . ,SHARP ) ( 1 . ,SEMI-SHARP ) ( 0 . ,NATURAL ) ( 6 . ,SEMI-FLAT )
    ( 5 . ,FLAT ) ( 4 . ,THREE-Q-FLAT )) \time 2/4 c2 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

