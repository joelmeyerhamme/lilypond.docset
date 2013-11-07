
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/02e-Rests-NoType.xml

\header {
    texidoc = "In some cases, a rest might 
          not have its type attribute set (this happens, for example, with
          voices in Finale, where you don't manually insert a 
          rest)."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 \partial 4 c4 | % 1
    a1 \bar "|."
    }

PartPOneVoiceTwo =  \relative e {
    \clef "bass" \key c \major \time 4/4 \partial 4 r4 | % 1
    e1 \bar "|."
    }


% The score definition
\new PianoStaff <<
    \context Staff = "1" << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >> \context Staff = "2" <<
        \context Voice = "PartPOneVoiceTwo" { \PartPOneVoiceTwo }
        >>
    >>

