
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/21c-Chords-ThreeNotesDuration.xml

\header {
    texidoc = "Some three-note 
                            chords, with various durations."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPZeroVoiceOne =  \relative f' {
    \clef "treble" \numericTimeSignature\time 4/4 <f a c>4. <a g'>8 <a f
        c'>4 <a f c'>4 | % 2
    <a f e'>4 <a f f'>4 <a f d'>2 }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPZeroVoiceOne" { \PartPZeroVoiceOne }
        >>
    >>

