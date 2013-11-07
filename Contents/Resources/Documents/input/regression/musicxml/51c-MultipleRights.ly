
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/51c-MultipleRights.xml

\header {
    texidoc = "There can be multiple 
        <rights> tags in the identification element of the score. The 
        conversion shall still work, ideally using both of 
        them."
    copyright = "Copyright © XXXX by Y. ZZZZ.
Released To The Public Domain."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    r1 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

