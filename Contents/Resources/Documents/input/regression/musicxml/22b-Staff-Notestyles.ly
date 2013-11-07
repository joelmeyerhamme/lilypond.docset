
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/22b-Staff-Notestyles.xml

\header {
    texidoc = "Staff-connected note styles: 
        slash notation, hidden notes (with and without hidden staff
        lines)"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 4/4 a4 a4 c4 a4 | % 2
    c4 s2 s2. g2 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { \skip4 "slash, no stem" \skip4
    "slash, with stem" \skip4 "normal settings restored" }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

