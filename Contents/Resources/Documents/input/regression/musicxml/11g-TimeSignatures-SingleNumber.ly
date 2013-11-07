
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/11g-TimeSignatures-SingleNumber.xml

\header {
    texidoc = "Time signature displayed as a
          single number."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b' {
    \clef "treble" \key c \major \once \override Staff.TimeSignature
    #'style = #'single-digit \time 3/8 b8 [ b8 b8 ] \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

