
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/23d-Tuplets-Nested.xml

%% additional definitions required by the score:
#(define ((tuplet-number::non-default-tuplet-denominator-text denominator) grob)
  (number->string (if denominator 
                      denominator 
                      (ly:event-property (event-cause grob) 'denominator))))


\header {
    texidoc = "Tuplets can be nested. Here 
          there is a 5:2 tuplet inside a 3:2 tuple (all consisting of written
          eighth notes)."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b' {
    \clef "treble" \key c \major \time 2/4 \times 2/3 {
        b8 [ b8 ] b8*2/5 [ b8*2/5 b8*2/5 b8*2/5 b8*2/5 ] b8 [ b8 ] }
    \times 4/15  {
        b8 [ b8 b8 b8 b8 ] }
    b8*2/3 [ b8*2/3 ] \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

