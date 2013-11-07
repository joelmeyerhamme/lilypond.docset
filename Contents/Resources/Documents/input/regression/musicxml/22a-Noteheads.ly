
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/22a-Noteheads.xml

\header {
    texidoc = "Different note styles, using the 
          <notehead> element. First, each note head style is printed 
          with four quarter notes, two with filled heads, two with unfilled 
          heads, where first the stem is up and then the stem is down. After 
          that, each note head style is printed with a half note (should have 
          an unfilled head by default). Finally, the Aiken note head styles are 
          tested, once with stem up and once with stem down."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 4/4 \once \override NoteHead
    #'style = #'slash a4 \once \override NoteHead #'style = #'slash c4
    \once \override NoteHead #'style = #'slash a4 \once \override
    NoteHead #'style = #'slash c4 | % 2
    \once \override NoteHead #'style = #'triangle a4 \once \override
    NoteHead #'style = #'triangle c4 \once \override NoteHead #'style =
    #'triangle a4 \once \override NoteHead #'style = #'triangle c4 | % 3
    \once \override NoteHead #'style = #'diamond a4 \once \override
    NoteHead #'style = #'diamond c4 \once \override NoteHead #'style =
    #'diamond a4 \once \override NoteHead #'style = #'diamond c4 | % 4
    \once \override NoteHead #'style = #'la a4 \once \override NoteHead
    #'style = #'la c4 \once \override NoteHead #'style = #'la a4 \once
    \override NoteHead #'style = #'la c4 | % 5
    a4 c4 a4 c4 | % 6
    \once \override NoteHead #'style = #'cross a4 \once \override
    NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
    #'cross a4 \once \override NoteHead #'style = #'cross c4 | % 7
    \once \override NoteHead #'style = #'xcircle a4 \once \override
    NoteHead #'style = #'xcircle c4 \once \override NoteHead #'style =
    #'xcircle a4 \once \override NoteHead #'style = #'xcircle c4 | % 8
    a4 c4 a4 c4 | % 9
    a4 c4 a4 c4 | \barNumberCheck #10
    a4 c4 a4 c4 | % 11
    a4 c4 a4 c4 | % 12
    a4 c4 a4 c4 | % 13
    a4 c4 a4 c4 | % 14
    a4 c4 a4 c4 | % 15
    \once \override NoteHead #'style = ##f a4 \once \override NoteHead
    #'style = ##f c4 \once \override NoteHead #'style = ##f a4 \once
    \override NoteHead #'style = ##f c4 | % 16
    \once \override NoteHead #'style = #'slash a2 \once \override
    NoteHead #'style = #'triangle a2 | % 17
    \once \override NoteHead #'style = #'diamond a2 \once \override
    NoteHead #'style = #'la a2 | % 18
    a2 \once \override NoteHead #'style = #'cross a2 | % 19
    \once \override NoteHead #'style = #'xcircle a2 a2 | \barNumberCheck
    #20
    a2 a2 | % 21
    a2 a2 | % 22
    a2 a2 | % 23
    \once \override NoteHead #'style = #'do a4 \once \override NoteHead
    #'style = #'do c4 \once \override NoteHead #'style = #'do a4 \once
    \override NoteHead #'style = #'do c4 | % 24
    \once \override NoteHead #'style = #'re a4 \once \override NoteHead
    #'style = #'re c4 \once \override NoteHead #'style = #'re a4 \once
    \override NoteHead #'style = #'re c4 | % 25
    \once \override NoteHead #'style = #'mi a4 \once \override NoteHead
    #'style = #'mi c4 \once \override NoteHead #'style = #'mi a4 \once
    \override NoteHead #'style = #'mi c4 | % 26
    \once \override NoteHead #'style = #'fa a4 \once \override NoteHead
    #'style = #'fa c4 \once \override NoteHead #'style = #'fa a4 \once
    \override NoteHead #'style = #'fa c4 | % 27
    a4 c4 a4 c4 | % 28
    \once \override NoteHead #'style = #'la a4 \once \override NoteHead
    #'style = #'la c4 \once \override NoteHead #'style = #'la a4 \once
    \override NoteHead #'style = #'la c4 | % 29
    \once \override NoteHead #'style = #'ti a4 \once \override NoteHead
    #'style = #'ti c4 \once \override NoteHead #'style = #'ti a4 \once
    \override NoteHead #'style = #'ti c4 | \barNumberCheck #30
    \key a \major \once \override NoteHead #'style = #'do a,4 \once
    \override NoteHead #'style = #'re b4 \once \override NoteHead
    #'style = #'mi cis4 \once \override NoteHead #'style = #'fa d4 | % 31
    e4 \once \override NoteHead #'style = #'la fis4 \once \override
    NoteHead #'style = #'ti gis4 \once \override NoteHead #'style = #'do
    a4 | % 32
    \key c \major \once \override NoteHead #'style = #'do c4 \once
    \override NoteHead #'style = #'re d4 \once \override NoteHead
    #'style = #'mi e4 \once \override NoteHead #'style = #'fa f4 | % 33
    g4 \once \override NoteHead #'style = #'la a4 \once \override
    NoteHead #'style = #'ti b4 \once \override NoteHead #'style = #'do c4
    \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { slash \skip4 \skip4 \skip4
    triangle \skip4 \skip4 \skip4 diamond \skip4 \skip4 \skip4 square
    \skip4 \skip4 \skip4 cross \skip4 \skip4 \skip4 x \skip4 \skip4
    \skip4 "circle-x" \skip4 \skip4 \skip4 "inverted triangle" \skip4
    \skip4 \skip4 "arrow down" \skip4 \skip4 \skip4 "arrow up" \skip4
    \skip4 \skip4 slashed \skip4 \skip4 \skip4 "back slashed" \skip4
    \skip4 \skip4 normal \skip4 \skip4 \skip4 cluster \skip4 \skip4
    \skip4 none \skip4 \skip4 \skip4 slash triangle diamond square cross
    x "circle-x" "inverted triangle" "arrow down" "arrow up" slashed
    "back slashed" normal cluster do \skip4 \skip4 \skip4 re \skip4
    \skip4 \skip4 mi \skip4 \skip4 \skip4 fa \skip4 \skip4 \skip4 so
    \skip4 \skip4 \skip4 la \skip4 \skip4 \skip4 ti \skip4 \skip4 \skip4
    do re mi fa so la ti do do re mi fa so la ti do }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

