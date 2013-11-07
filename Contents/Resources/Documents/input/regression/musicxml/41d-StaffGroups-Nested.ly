
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/41d-StaffGroups-Nested.xml

\header {
    texidoc = "Two properly nested part groups: 
          One group  (with a square bracket) goes from staff 2 to 4) and another 
          group (with a curly bracket) goes from staff 3 to 4."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b' {
    \clef "treble" \key c \major \time 4/4 b1 | % 2
    a1 | % 3
    R1 \bar "|."
    }

PartPTwoVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 4/4 a1 | % 2
    a1 | % 3
    R1 \bar "|."
    }

PartPThreeVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 4/4 a1 | % 2
    a1 | % 3
    R1 \bar "|."
    }

PartPFourVoiceOne =  \relative f' {
    \clef "treble" \key c \major \time 4/4 f1 | % 2
    b1 | % 3
    R1 \bar "|."
    }

PartPFiveVoiceOne =  \relative d'' {
    \clef "treble" \key c \major \time 4/4 d1 | % 2
    f,1 | % 3
    R1 \bar "|."
    }


% The score definition
\score {
    <<
        \new Staff <<
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                >>
            >>
        \new StaffGroup \with { systemStartDelimiter =
            #'SystemStartSquare } <<
            \new Staff <<
                \context Staff << 
                    \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                    >>
                >>
            \new StaffGroup <<
                \new Staff <<
                    \context Staff << 
                        \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \context Staff << 
                        \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
                        >>
                    >>
                
                >>
            
            >>
        \new Staff <<
            \context Staff << 
                \context Voice = "PartPFiveVoiceOne" { \PartPFiveVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

