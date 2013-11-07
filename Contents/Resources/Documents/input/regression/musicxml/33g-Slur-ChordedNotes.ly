
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/33g-Slur-ChordedNotes.xml

\header {
    texidoc = "Slurs on chorded notes: Only the 
          first note of the chord should get the slur notation. Some 
          applications print out the slur for all notes -- these should be
          ignored."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative g' {
    \clef "treble" \key c \major \time 4/4 <g c g'>4 ( <a d>4 <g d'>4 )
    ( c4 ) \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

