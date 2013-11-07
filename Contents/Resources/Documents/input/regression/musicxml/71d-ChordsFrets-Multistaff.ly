
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/71d-ChordsFrets-Multistaff.xml

\header {
    texidoc = "Chords and fretboards assigned to 
          the voices in a multi-voice, multi-staff part. There should be fret 
          diagrams above each of the two staves."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative d'' {
    \clef "treble" \key c \major \time 4/4 d4 d4 d4 ^\markup {
        \fret-diagram #"6-o;5-6;4-4;3-6;2-6;" } d4 \bar "|."
    }

PartPOneVoiceOneChords =  \chordmode {
    s2 es4:m9 }

PartPOneVoiceThree =  \relative d {
    \clef "bass" \key c \major \time 4/4 d4 ^\markup { \fret-diagram
        #"6-o;5-3;4-2;3-o;2-1;1-o;" } d4 ^\markup { \fret-diagram
        #"6-o;5-o;4-o;3-2;2-1;1-2;" } d4 d4 ^\markup { \fret-diagram
        #"6-o;5-3;4-1;3-3;2-1;1-1;" } \bar "|."
    }

PartPOneVoiceThreeChords =  \chordmode {
    c4:5 d4:7 s4 c4:m7.11 }

PartPOneVoiceTwo =  \relative f' {
    \clef "treble" \key c \major \time 4/4 f4 f4 f4 f4 \bar "|."
    }

PartPOneVoiceFour =  \relative b, {
    \clef "bass" \key c \major \time 4/4 b4 b4 b4 b4 \bar "|."
    }


% The score definition
\new PianoStaff <<
    \context ChordNames = "PartPOneVoiceOneChords" \PartPOneVoiceOneChords
    \context Staff = "1" <<
        \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
        \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
        >> \context ChordNames = "PartPOneVoiceThreeChords"
    \PartPOneVoiceThreeChords \context Staff = "2" <<
        \context Voice = "PartPOneVoiceThree" { \voiceOne \PartPOneVoiceThree }
        \context Voice = "PartPOneVoiceFour" { \voiceTwo \PartPOneVoiceFour }
        >>
    >>

