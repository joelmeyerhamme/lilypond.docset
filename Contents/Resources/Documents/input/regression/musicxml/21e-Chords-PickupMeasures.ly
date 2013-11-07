
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/21e-Chords-PickupMeasures.xml

\header {
    texidoc = "Check for proper chord detection 
          after a pickup measure (i.e. the first beat of the measure is not 
          aligned with multiples of the time signature)!"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPTwoVoiceOne =  \relative c'' {
    \partial 4 c4 | % 1
    <c a f>4 <c a>4 }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
        >>
    >>

