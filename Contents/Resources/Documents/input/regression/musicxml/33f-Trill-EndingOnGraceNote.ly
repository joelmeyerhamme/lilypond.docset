
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/33f-Trill-EndingOnGraceNote.xml

\header {
    texidoc = "A trill spanner that spans a 
          grace note and ends on an after-grace note at the end of the 
          measure."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e'' {
    \clef "treble" \key c \major \time 6/8 e4 ( fis16 [ g16 ) \trill
    \startTrillSpan ] \afterGrace { \grace { b16 } a4. } { g16 [ a16
        \stopTrillSpan ] } }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

