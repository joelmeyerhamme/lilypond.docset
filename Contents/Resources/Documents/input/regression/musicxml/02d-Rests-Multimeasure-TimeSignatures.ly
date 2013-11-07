
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/02d-Rests-Multimeasure-TimeSignatures.xml

\header {
    texidoc = "Multi-Measure rests should always 
          be converted into durations that are a multiple of the time 
          signature."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 R1*2 | % 3
    \time 3/4  R2.*3 | % 6
    \time 2/4  R2*2 | % 8
    \time 4/4  R1*2 | \barNumberCheck #10
    c1 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

