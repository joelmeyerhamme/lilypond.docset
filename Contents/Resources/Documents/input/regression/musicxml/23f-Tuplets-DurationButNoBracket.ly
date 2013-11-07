
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/23f-Tuplets-DurationButNoBracket.xml

\header {
    encodingsoftware = "/usr/bin/vi"
    tagline = "/usr/bin/vi"
    texidoc = "Some \"triplets\" 
                            on the end of the first and in the second staff, using only 
                            <time-modification>, but not explicit tuplet 
                            bracket. Thus, the duration of the notes in the 
                            second staff should be scaled properly in comparison 
                            to staff 1, but no visual indication about the 
                            tuplets is given."
    encodingdate = "2007-02-02"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative f' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4 f4 g4 a4*2/3
    b4*2/3 c4*2/3 }

PartPOneVoiceTwo =  \relative a, {
    \clef "bass" \key c \major \numericTimeSignature\time 4/4 a8 [ b8 ]
    c8*2/3 [ d8*2/3 e8*2/3 ] a,16 b16 c16 d16 e16*2/3 f16*2/3 g16*2/3 a16*2/3
    b16*2/3 c16*2/3 }


% The score definition
\new PianoStaff <<
    \context Staff = "1" << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >> \context Staff = "2" <<
        \context Voice = "PartPOneVoiceTwo" { \PartPOneVoiceTwo }
        >>
    >>

