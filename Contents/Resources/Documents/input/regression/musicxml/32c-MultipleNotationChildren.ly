
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/32c-MultipleNotationChildren.xml

\header {
    texidoc = "
          It should not make any difference whether two articulations are given
          inside two different notation elements, inside two different articulations 
          children of the same notation element or inside the same articulations
          element. Thus, all three notes should have a staccato and an accent.
      "
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 3/4 a4 ^. ^> a4 ^. ^> a4 ^. ^> }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

