
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/42a-MultiVoice-TwoVoicesOnStaff-Lyrics.xml

\header {
    texidoc = "Two voices share one staff. Each 
        voice is assigned some lyrics."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e'' {
    \clef "treble" \key c \major \time 4/4 e2 ^\fermata _> d4 \mf b4 | % 2
    a'4 \rest d,4 b,4. ( c'8 ) | % 3
    R1 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { This is the lyrics of }
PartPOneVoiceTwo =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 s2 ^\fermata _> b4 \mf g4 | % 2
    c,4 \rest b'4 g,4. ( a'8 ) s1 \bar "|."
    }

PartPOneVoiceTwoLyricsOne =  \lyricmode { This is the lyrics of }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
        \new Lyrics \lyricsto "PartPOneVoiceTwo" \PartPOneVoiceTwoLyricsOne
        >>
    >>

