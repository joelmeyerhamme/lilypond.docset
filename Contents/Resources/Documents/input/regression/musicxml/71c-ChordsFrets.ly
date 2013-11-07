
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/71c-ChordsFrets.xml

\header {
    texidoc = "A staff with chord names and some 
          fretboards shown. The fretboards can have an arbitrary number of 
          frets/strings, can start at an arbitrary fret and can even contain 
          fingering information."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 4/4 | % 1
    a4 ^\markup { \fret-diagram #"6-o;5-3;4-2;3-o;2-1;1-o;" } a4
    ^\markup { \fret-diagram #"6-o;5-3;4-5;3-4;2-5;1-2;" } a4 ^\markup {
        \fret-diagram #"6-o;5-2;4-1;3-2;2-3;1-3;" } a4 ^\markup {
        \fret-diagram #"h:5;6-11;5-13;4-15;3-12;2-11;1-11;" } | % 2
    | % 2
    a4 ^\markup { \fret-diagram #"6-3;5-5;4-5;3-3;2-3;1-3;" } a4
    ^\markup { \fret-diagram #"6-o;5-o;4-1;3-3;2-3;1-3;" } a4 ^\markup {
        \fret-diagram #"6-o;5-o;4-1;3-2;2-1;1-2;" } a4 ^\markup {
        \fret-diagram
        #"f:1;w:10;h:3;10-1-2;9-3;7-1-4;5-3;4-2;3-1-5;2-o;1-o;" } \bar
    "|."
    }

PartPOneVoiceOneChords =  \chordmode {
    | % 1
    c4:5 c4:maj7.11+ b4:7.5+.9+ es4:5.2 | % 2
    | % 2
    g4:m5 dis4:maj7 a4:dim7 c4:5 }


% The score definition
\new Staff <<
    \context ChordNames = "PartPOneVoiceOneChords" \PartPOneVoiceOneChords
    \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

