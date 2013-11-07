
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/41a-MultiParts-Partorder.xml

\header {
    texidoc = "A piece with 
                            four parts (P0, P1, P2, P3; different from what 
			    Finale creates!). Are they converted in the correct 
			    order?"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPZeroVoiceOne =  \relative c' {
    \clef "treble" \key g \major \numericTimeSignature\time 4/4 c4 r4 r2
    }

PartPOneVoiceOne =  \relative e' {
    \clef "treble" \key g \major \numericTimeSignature\time 4/4 e4 r4 r2
    }

PartPTwoVoiceOne =  \relative g' {
    \clef "treble" \key g \major \numericTimeSignature\time 4/4 g4 r4 r2
    }

PartPThreeVoiceOne =  \relative b' {
    \clef "treble" \key g \major \numericTimeSignature\time 4/4 b4 r4 r2
    }


% The score definition
\score {
    <<
        \new Staff <<
            \set Staff.instrumentName = "Part 1"
            \context Staff << 
                \context Voice = "PartPZeroVoiceOne" { \PartPZeroVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "Part 2"
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "Part 3"
            \context Staff << 
                \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "Part 4"
            \context Staff << 
                \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

