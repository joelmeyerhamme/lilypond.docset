
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/32b-Articulations-Texts.xml

\header {
    texidoc = "Text markup: 
                            different font sizes, weights and colors."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative f' {
    \key c \major \numericTimeSignature\time 4/4 | % 1
    f8*8 ^" Normal, Medium " | % 2
    | % 2
    g1 ^\markup{ \bold { Bold, Medium } } ^\markup{ \large { Normal,
            Large } } | % 3
    | % 3
    f1 ^\markup{ \bold\large { Bold, Large } } ^\markup{ \small {
            Normal, Small } } ^\markup{ \bold\small {Bold, Small} }
    _\markup{ \small\with-color #(rgb-color 1.0 0.5 0.0) {Normal, Small,
            Colored, Below} } }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

