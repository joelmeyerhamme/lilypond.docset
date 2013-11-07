
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/61c-Lyrics-Pianostaff.xml

\header {
    texidoc = "Lyrics assigned to the voices of 
          a piano staff containing two simple staves. Each staff is assigned 
          exactly one lyrics line."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 4/4 a4 a4 a4 a4 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { tra -- la -- li "ja! " __ }
PartPOneVoiceTwo =  \relative f {
    \clef "bass" \key c \major \time 4/4 f4 f4 f4 f4 \bar "|."
    }

PartPOneVoiceTwoLyricsOne =  \lyricmode { TRA -- LA -- LI "JA! " __ }

% The score definition
\new PianoStaff <<
    \context Staff = "1" << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >> \context Staff = "2" <<
        \context Voice = "PartPOneVoiceTwo" { \PartPOneVoiceTwo }
        \new Lyrics \lyricsto "PartPOneVoiceTwo" \PartPOneVoiceTwoLyricsOne
        >>
    >>

