
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/24f-GraceNote-Slur.xml

\header {
    texidoc = "A grace note with a slur to the
          actual note. This can be interpreted as acciaccatura or appoggiatura,
          depending on the existence of a slash."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e'' {
    \clef "treble" \key c \major \time 4/4 e2 \grace { g16 ( } e2 ) }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

