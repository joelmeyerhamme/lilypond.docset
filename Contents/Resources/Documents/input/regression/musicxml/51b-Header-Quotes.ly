
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/51b-Header-Quotes.xml

\header {
    copyright = "Free for anyone (\"Public Domain\")"
    encodingdate = "2008-02-06"
    tagline = "\"Hand-crafted\" MusicXML file"
    title = "\"Quotes\" in header fields"
    composer = "Some \"Tester\" Name"
    encodingsoftware = "\"Hand-crafted\" MusicXML file"
    texidoc = "Several header fields and part 
          names can contain quotes (\"). This test checks whether they are 
          converted/imported without problems (i.e. whether they are correctly
          escaped when converting)."
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
    \set Staff.instrumentName = "Staff \"Test\""
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

