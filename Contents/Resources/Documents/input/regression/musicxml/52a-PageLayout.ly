
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/52a-PageLayout.xml

\header {
    texidoc = "Several page layout settings: 
          paper size, margins, system margins and distances, different fonts, 
          etc."
    title = "Layout options"
    }

#(set-global-staff-size 10.7275425591)
\paper {
    paper-width = 17.0\cm
    paper-height = 8.99\cm
    top-margin = 0.5\cm
    botton-margin = 0.7\cm
    left-margin = 3.0\cm
    right-margin = 2.0\cm
    between-system-space = 5.29\cm
    page-top-space = 4.11\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 R1*3 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

