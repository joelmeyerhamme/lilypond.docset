
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/72a-TransposingInstruments.xml

\header {
    texidoc = "Transposing instruments: Trumpet 
          in Bb, Horn in Eb, Piano; All of them show the C major scale (the 
          trumpet with 2 sharp, the horn with 3 sharp)."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative d' {
    \transposition bes \clef "treble" \key d \major \time 4/4 d4 e4 fis4
    g4 | % 2
    a4 b4 cis4 d4 \bar "|."
    }

PartPTwoVoiceOne =  \relative a' {
    \transposition es \clef "treble" \key a \major \time 4/4 a4 b4 cis4
    d4 | % 2
    e4 fis4 gis4 a4 \bar "|."
    }

PartPThreeVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 c4 d4 e4 f4 | % 2
    g4 a4 b4 c4 \bar "|."
    }


% The score definition
\score {
    <<
        \new Staff <<
            \set Staff.instrumentName = "Trumpet in Bb"
            \set Staff.shortInstrumentName = "Bb Tpt."
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "Horn in Eb"
            \set Staff.shortInstrumentName = "Hn."
            \context Staff << 
                \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "Piano"
            \context Staff << 
                \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

