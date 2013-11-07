
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/42b-MultiVoice-MidMeasureClefChange.xml

\header {
    texidoc = "A multi-voice / multi-staff part 
          with a clef change in the middle of a measure and a <backward> 
          for voice 2 jumping back beyond that clef change."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative f' {
    \clef "treble" \key c \major \time 6/8 f8 _. [ d8 _. b8 _. ] \clef
    "bass" g8 ( f4 ) \bar "||"
    | % 85
    \clef "treble" e''8 _. \fp [ c8 _. g8 _. ] g8 ( f4 ) }

PartPOneVoiceThree =  \relative g, {
    \clef "bass" \key c \major \time 6/8 r8 g8 _. [ g8 _. ] g8 ( [ a16 g16
    fis16 g16 ) ] \bar "||"
    <c e g c>4 r8 r4 g'8 _. }


% The score definition
\new PianoStaff <<
    \context Staff = "1" << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >> \context Staff = "2" <<
        \context Voice = "PartPOneVoiceThree" { \PartPOneVoiceThree }
        >>
    >>

