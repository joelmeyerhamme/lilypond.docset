
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/41b-MultiParts-MoreThan10.xml

\header {
    texidoc = "A piece with 
                            20 parts to check whether an application supports
			    that many parts and whether they are 
                            correctly sorted."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPZeroVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPOneVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPTwoVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPThreeVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPFourVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPFiveVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPSixVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPSevenVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPEightVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPNineVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPOneZeroVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPOneOneVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPOneTwoVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPOneThreeVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPOneFourVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPOneFiveVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPOneSixVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPOneSevenVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPOneEightVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }

PartPOneNineVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 R1 }


% The score definition
\score {
    <<
        \new Staff <<
            \set Staff.instrumentName = "P0"
            \context Staff << 
                \context Voice = "PartPZeroVoiceOne" { \PartPZeroVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P1"
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P2"
            \context Staff << 
                \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P3"
            \context Staff << 
                \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P4"
            \context Staff << 
                \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P5"
            \context Staff << 
                \context Voice = "PartPFiveVoiceOne" { \PartPFiveVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P6"
            \context Staff << 
                \context Voice = "PartPSixVoiceOne" { \PartPSixVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P7"
            \context Staff << 
                \context Voice = "PartPSevenVoiceOne" { \PartPSevenVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P8"
            \context Staff << 
                \context Voice = "PartPEightVoiceOne" { \PartPEightVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P9"
            \context Staff << 
                \context Voice = "PartPNineVoiceOne" { \PartPNineVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P10"
            \context Staff << 
                \context Voice = "PartPOneZeroVoiceOne" { \PartPOneZeroVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P11"
            \context Staff << 
                \context Voice = "PartPOneOneVoiceOne" { \PartPOneOneVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P12"
            \context Staff << 
                \context Voice = "PartPOneTwoVoiceOne" { \PartPOneTwoVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P13"
            \context Staff << 
                \context Voice = "PartPOneThreeVoiceOne" { \PartPOneThreeVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P14"
            \context Staff << 
                \context Voice = "PartPOneFourVoiceOne" { \PartPOneFourVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P15"
            \context Staff << 
                \context Voice = "PartPOneFiveVoiceOne" { \PartPOneFiveVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P16"
            \context Staff << 
                \context Voice = "PartPOneSixVoiceOne" { \PartPOneSixVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P17"
            \context Staff << 
                \context Voice = "PartPOneSevenVoiceOne" { \PartPOneSevenVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P18"
            \context Staff << 
                \context Voice = "PartPOneEightVoiceOne" { \PartPOneEightVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "P19"
            \context Staff << 
                \context Voice = "PartPOneNineVoiceOne" { \PartPOneNineVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

