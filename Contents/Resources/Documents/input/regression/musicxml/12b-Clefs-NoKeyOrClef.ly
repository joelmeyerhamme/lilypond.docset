
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/12b-Clefs-NoKeyOrClef.xml

\header {
    texidoc = "A score without 
                            any key or clef defined. The default (4/4 in treble 
                            clef) should be used."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPZeroVoiceOne =  \relative c' {
    \numericTimeSignature\time 4/4  c1 | % 2
    c1 }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPZeroVoiceOne" { \PartPZeroVoiceOne }
        >>
    >>

