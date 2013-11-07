
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/61i-Lyrics-Chords.xml

\header {
    texidoc = "Each note of a chord can have
          some lyrics attached. In this case, each note of the chord has lyrics 
          of the form \"Lyrics [123]\" attached, where each lyrics has a different 
          number attribute to distinguish them. These syllables should be 
          imported into three different stanzas and the timing should be 
          correct."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e'' {
    \clef "treble" \key c \major \time 4/4 <e c a>4 }

PartPOneVoiceOneLyricsOne =  \lyricmode { "Lyrics 1" }
PartPOneVoiceOneLyricsTwo =  \lyricmode { \skip4 }
PartPOneVoiceOneLyricsThree =  \lyricmode { \skip4 }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsTwo
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsThree
        >>
    >>

