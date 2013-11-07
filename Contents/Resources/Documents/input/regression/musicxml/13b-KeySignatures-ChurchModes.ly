
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/13b-KeySignatures-ChurchModes.xml

\header {
    texidoc = "All different modes: major, 
        minor, ionian, dorian, phrygian, lydian, mixolydian, aeolian, and 
        locrian; All modes are given with 2 sharps."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative g' {
    \clef "treble" \key d \major \time 4/4 g4 \key b \minor g4 \key d
    \ionian g4 \key e \dorian g4 | % 2
    \key fis \phrygian g4 \key g \lydian g4 \key a \mixolydian g4 \key b
    \aeolian g4 | % 3
    \key cis \locrian g4 }

PartPOneVoiceOneLyricsOne =  \lyricmode { major minor ionian dorian
    phrygian lydian mixolydian aeolian locrian }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

