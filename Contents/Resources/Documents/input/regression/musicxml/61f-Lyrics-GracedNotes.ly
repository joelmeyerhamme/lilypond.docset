
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/61f-Lyrics-GracedNotes.xml

\header {
    texidoc = "Grace notes shall not mess up the 
          lyrics, and they shall not be assigned a syllable."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative g' {
    \clef "treble" \key c \major \time 4/4 g4 ( \acciaccatura { d'8 } c4
    ) c4 \acciaccatura { d8 } c4 | % 2
    c4 ~ \grace { e8 [ d8 ] } c4 \grace { d8 } c4 c4 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { Ly -- rics on "notes " __ with
    graces }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

