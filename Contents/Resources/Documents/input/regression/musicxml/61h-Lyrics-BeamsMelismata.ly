
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/61h-Lyrics-BeamsMelismata.xml

\header {
    texidoc = "Beaming or slurs can indicate 
          melismata for lyrics. Also make sure that notes without an explicit
          syllable are treated as if they were part of a melisma."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    c8 [ a8 c8 ] a8 c8 [ g8 b8 ] r8 | % 2
    c8 a8 c8 a8 c8 g8 b8 r8 | % 3
    c8 ( a8 c8 ) a8 c8 ( g8 b8 ) r8 | % 4
    c8 ( a8 c8 a8 c8 g8 b8 ) r8 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { Me -- lis -- "ma " __ Me --
    \skip4 \skip4 lis -- "ma " __ \skip4 \skip4 Me -- lis -- "ma " __ Me
    -- }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

