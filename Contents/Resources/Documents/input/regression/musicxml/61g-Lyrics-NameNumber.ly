
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/61g-Lyrics-NameNumber.xml

\header {
    texidoc = "A lyrics syllable can have both 
          a number and a name attribute. The question is: What should be used 
          to put syllables of the same voice together. This example uses 
          different number/name combinations to check how different 
          applications handle this unspecified case (The advice on the 
          MusicXML mailing list was \"there is no correct way, each 
          application can do what it thinks is best\")."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative g' {
    \clef "treble" \key c \major \time 6/4 g4 g4 g4 g4 g4 g4 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { "Verse1A" -- "Chorus1A" --
    "AnotherChorus1A" -- "1B" -- "Verse1C" -- "Chorus1D" -- VerseE --
    NoneF -- }
PartPOneVoiceOneLyricsTwo =  \lyricmode { "Chorus1A" -- "2B" --
    "Chorus2C" -- \skip4 VerseE -- NoneF -- }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsTwo
        >>
    >>

