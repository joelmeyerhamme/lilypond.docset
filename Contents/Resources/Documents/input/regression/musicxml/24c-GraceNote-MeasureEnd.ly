
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/24c-GraceNote-MeasureEnd.xml

\header {
    texidoc = "A grace note that appears at the 
          measure end (without any steal-from-* attribute set). Some 
          applications need to convert this into an after-grace."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e'' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4 e2
    \afterGrace { e2 } { g16 [ a16 ] } }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

