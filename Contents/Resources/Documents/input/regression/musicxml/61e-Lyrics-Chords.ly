
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/61e-Lyrics-Chords.xml

\header {
    texidoc = "Assigning lyrics to chorded 
            notes."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e' {
    \clef "treble" \key c \major \time 4/4 <e c'>4 <a c>4 <e c'>4 <a c>4
    \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { Ly -- rics on chords }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

