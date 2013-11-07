
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/21b-Chords-TwoNotes.xml

\header {
    texidoc = "Some subsequent 
                            (identical) two-note chords."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPZeroVoiceOne =  \relative a' {
    \clef "treble" \numericTimeSignature\time 4/4 <a f>4 <a f>4 <a f>4
    <a f>4 | % 2
    <a f>4 <a f>4 <a f>4 <a f>4 }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPZeroVoiceOne" { \PartPZeroVoiceOne }
        >>
    >>

