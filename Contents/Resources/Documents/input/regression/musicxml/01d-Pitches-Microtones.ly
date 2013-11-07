
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/01d-Pitches-Microtones.xml

\header {
    texidoc = "Some microtones: c 
          flat-and-a-half, d half-flat, e half-sharp, f sharp-and-a half. 
          Once in the lower and once in the upper region of the 
          staff."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative ceseh' {
    \clef "treble" \key c \major \time 4/4 ceseh4 deh4 eih4 fisih4 | % 2
    ceseh'4 deh4 eih4 fisih4 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

