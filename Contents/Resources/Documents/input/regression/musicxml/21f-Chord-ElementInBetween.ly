
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/21f-Chord-ElementInBetween.xml

\header {
    texidoc = "Between the individual notes of 
            a chord there can be direction or harmony elements, which should be 
            properly assigned to the chord (or the position of the 
            chord)."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPZeroVoiceOne =  \relative a' {
    \clef "treble" \numericTimeSignature\time 4/4 <a fis d>4 \mark
    \markup { \musicglyph #"scripts.segno" } r4 \p r2 }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPZeroVoiceOne" { \PartPZeroVoiceOne }
        >>
    >>

