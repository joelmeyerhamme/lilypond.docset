
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/99b-Lyrics-BeamsMelismata-IgnoreBeams.xml

\header {
    encodingsoftware = "Sibelius 5.1"
    tagline = "Sibelius 5.1"
    texidoc = "If we properly ignore all beaming 
          information from the Dolet 3 for Sibelius export file, make sure that 
          the lyrics syllables are still assigned to the correct 
          notes."
    }

PartPOneVoiceOne =  \relative c'' {
    c8 a8 c8 a8 c8 g8 b8 r8 | % 2
    c8 a8 c8 a8 c8 g8 b8 r8 | % 3
    c8 ( a8 c8 ) a8 c8 ( g8 b8 ) r8 | % 4
    c8 ( a8 c8 a8 c8 g8 b8 ) r8 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { Me -- \skip4 \skip4 lis -- "ma
    " __ \skip4 \skip4 Me -- \skip4 \skip4 lis -- "ma " __ \skip4 \skip4
    Me -- lis -- "ma " __ Me -- }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

