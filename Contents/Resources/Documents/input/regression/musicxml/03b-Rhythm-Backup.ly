
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/03b-Rhythm-Backup.xml

\header {
    texidoc = "Two voices with a backup, that 
          does not jump to the beginning for the measure for voice 2, but 
          somewhere in the middle. Voice 2 thus won't have any notes or rests 
          for the first beat of the measures."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 c4 c4 }

PartPOneVoiceTwo =  \relative a {
    \clef "treble" \key c \major \time 4/4 s4 a4 a4 }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
        \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
        >>
    >>

