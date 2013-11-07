
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/32d-Arpeggio.xml

\header {
    texidoc = "Different Arpeggio directions 
          (normal, up, down, non-arpeggiate)"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major <c e' g>4 \arpeggio \arpeggio \arpeggio
    \arpeggioArrowUp \arpeggioArrowUp \arpeggioArrowUp <c e' g>4
    \arpeggio \arpeggio \arpeggio \arpeggioNormal \arpeggioNormal
    \arpeggioNormal <c e' g>4 \arpeggio \arpeggio \arpeggio
    \arpeggioArrowDown \arpeggioArrowDown \arpeggioArrowDown <c e' g>4
    \arpeggio \arpeggio \arpeggio \arpeggioNormal \arpeggioNormal
    \arpeggioNormal <c e' g>4 \arpeggio \arpeggio \arpeggio
    \arpeggioBracket \arpeggioBracket <c e' g>4 \arpeggio \arpeggio
    \arpeggioNormal \arpeggioNormal <c e' g>4 \arpeggio \arpeggio
    \arpeggio \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { normal up normal down normal
    "non-arp." normal }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

