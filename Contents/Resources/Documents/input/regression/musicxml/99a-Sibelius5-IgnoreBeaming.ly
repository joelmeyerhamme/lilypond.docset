
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/99a-Sibelius5-IgnoreBeaming.xml

\header {
    encodingsoftware = "Sibelius 5.1"
    tagline = "Sibelius 5.1"
    texidoc = "Dolet 3 for 
                            Sibelius (5.1) did not print out any closing beam 
                            tags, only starting and continuing beam tags. For 
                            such files, one either needs to ignore all beaming
                            information or close all beams "
    }

PartPOneVoiceOne =  \relative e''' {
    \clef "treble" \key c \major \time 3/4 e32 ( fis32 fis32 fis8 gis32
    b32 ) }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

