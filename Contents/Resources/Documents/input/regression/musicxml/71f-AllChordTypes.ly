
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/71f-AllChordTypes.xml

\header {
    texidoc = "All chord types defined in 
          MusicXML. The staff will only contain one c' note (NO chord) for 
          all of them, but the chord names should be properly 
          printed."
    title = "All MusicXML chord names/types with <root>"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 | % 1
    c4 c4 c4 c4 | % 2
    | % 2
    c4 c4 c4 c4 | % 3
    | % 3
    c4 c4 c4 c4 | % 4
    | % 4
    c4 c4 c4 c4 | % 5
    | % 5
    c4 c4 c4 c4 | % 6
    | % 6
    c4 c4 c4 c4 | % 7
    | % 7
    c4 c4 c4 c4 | % 8
    | % 8
    c4 c4 c4 c4 | % 9
    | % 9
    c2 c8 c8 r4 | \barNumberCheck #10
    | \barNumberCheck #10
    c4 c4 \bar "|."
    }

PartPOneVoiceOneChords =  \chordmode {
    | % 1
    c4:5 c4:m5 c4:aug5 c4:dim5 | % 2
    | % 2
    c4:7 c4:maj7 c4:m7 c4:dim7 | % 3
    | % 3
    c4:aug7 c4:dim5m7 c4:maj7m5 c4:6 | % 4
    | % 4
    c4:m6 c4:9 c4:maj9 c4:m9 | % 5
    | % 5
    c4:11 c4:maj11 c4:m11 c4:13.11 | % 6
    | % 6
    c4:maj13.11 c4:m13 c4:sus2 c4:sus4 | % 7
    | % 7
    | % 8
    | % 8
    s4*5 c4:5^3 s4 c4:1 | % 9
    | % 9
    fis2:5 feses8:5/+c gis8:5/+dis c4:5 | \barNumberCheck #10
    | \barNumberCheck #10
    c4:5.5-^3 c4:5.6-^1 }

PartPOneVoiceOneLyricsOne =  \lyricmode { major minor augmented
    diminished dominant "major-seventh" "minor-seventh"
    "diminished-seventh" "augmented-seventh" "half-diminished"
    "major-minor" "major-sixth" "minor-sixth" "dominant-ninth"
    "major-ninth" "minor-ninth" "dominant-11th" "major-11th"
    "minor-11th" "dominant-13th" "major-13th" "minor-13th"
    "suspended-second" "suspended-fourth" Neapolitan Italians French
    German pedal power Tristan other Inversion "Fbb/C" "G#/D#" "C-3+5b"
    "C-1+6b" }

% The score definition
\new Staff <<
    \context ChordNames = "PartPOneVoiceOneChords" \PartPOneVoiceOneChords
    \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>
