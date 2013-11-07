
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/03a-Rhythm-Durations.xml

\header {
    texidoc = "All note durations, from long, 
          brevis, whole until 128th; First with their plain values, then dotted 
          and finally doubly-dotted."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 16/4 c\longa | % 2
    c\breve c1 c2 c4 c8 c16 c32 c64 c128 c128 | % 4
    \time 24/4  c\longa. | % 5
    c\breve. c1. c2. c4. c8. c16. c32. c64. c128. c128. | % 6
    \time 28/4  c\longa.. | % 7
    c\breve.. c1.. c2.. c4.. c8.. c16.. c32.. c64.. c64.. \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

