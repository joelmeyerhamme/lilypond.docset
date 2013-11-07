
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/33h-Spanners-Glissando.xml

\header {
    texidoc = "All different types of 
          glissando defined in MusicXML"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative g' {
    \clef "treble" \key c \major g4 \glissando f'4 g,4 \glissando f'4 | % 2
    \once \override Glissando #'style = #'dashed-line g,4 \glissando f'4
    \once \override Glissando #'style = #'dotted-line g,4 \glissando f'4
    | % 3
    \once \override Glissando #'style = #'zigzag g,4 \glissando f'4 g,4
    \glissando f'4 | % 4
    g,4 \glissando f'4 \once \override Glissando #'style = #'dashed-line
    g,4 \glissando f'4 | % 5
    \once \override Glissando #'style = #'dotted-line g,4 \glissando f'4
    \once \override Glissando #'style = #'zigzag g,4 \glissando f'4 \bar
    "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { normal glissando solid
    "(+text)" dashed \skip4 dotted \skip4 wavy \skip4 normal slide solid
    "(+text)" dashed \skip4 dotted \skip4 wavy \skip4 }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

