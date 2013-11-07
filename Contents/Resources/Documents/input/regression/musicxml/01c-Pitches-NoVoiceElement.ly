
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/01c-Pitches-NoVoiceElement.xml

\header {
    texidoc = "The <voice> element 
        of notes is optional in MusicXML (although Dolet always writes it out). 
        Here, there is one note with lyrics, but without a voice assigned. It 
        should still be correctly converted."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceNone =  \relative g' {
    \clef "treble" g1 \bar "|."
    }

PartPOneVoiceNoneLyricsOne =  \lyricmode { A }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceNone" { \PartPOneVoiceNone }
        \new Lyrics \lyricsto "PartPOneVoiceNone" \PartPOneVoiceNoneLyricsOne
        >>
    >>

