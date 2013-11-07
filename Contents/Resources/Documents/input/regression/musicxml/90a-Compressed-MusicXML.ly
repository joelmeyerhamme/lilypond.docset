
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/90a-Compressed-MusicXML.mxl

\header {
    encodingsoftware = "Hand-crafted MusicXML file (Kate on KDE)"
    tagline = "Hand-crafted MusicXML file (Kate on KDE)"
    texidoc = "A compressed MusicXML file, 
              containing a simple MusicXML score and the corresponding .pdf 
              output for reference."
    copyright = "Public Domain"
    title = "Compressed MusicXML file"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative cis' {
    \clef "treble" \key a \major \time 2/2 cis4 cis4 cis4 cis4 }


% The score definition
\new Staff <<
    \set Staff.instrumentName = "Voice"
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

