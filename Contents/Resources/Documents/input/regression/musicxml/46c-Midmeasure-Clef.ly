
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/46c-Midmeasure-Clef.xml

\header {
    texidoc = "A clef change in the middle of a 
            measure, using either an implicit measure or simply placing 
            the attributes in the middle of the measure."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 R1 | % 2
    c4 c4 \bar ""
    \clef "mezzosoprano" c4 c4 | % 3
    c4 c4 \clef "treble" c4 c4 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

