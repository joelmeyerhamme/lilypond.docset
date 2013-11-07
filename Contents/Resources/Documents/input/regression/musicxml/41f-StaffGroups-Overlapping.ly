
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/41f-StaffGroups-Overlapping.xml

\header {
    texidoc = "MusicXML allows for overlapping 
          part-groups, while many applications do not allow overlapping groups, 
          but require them to be properly nested. In this case, one group 
          (with a square bracket) goes from staff 2 to 4) and another group 
          (with a curly bracket) goes from staff 3 to 5."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 R1 \bar "|."
    }

PartPTwoVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 R1 \bar "|."
    }

PartPThreeVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 R1 \bar "|."
    }

PartPFourVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 R1 \bar "|."
    }

PartPFiveVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 R1 \bar "|."
    }


% The score definition
\score {
    <<
        \new StaffGroup \with { \consists "Instrument_name_engraver" }
        <<
            \set StaffGroup.instrumentName = "Group 1"
            \set StaffGroup.shortInstrumentName = "Gr1"
            \new Staff <<
                \context Staff << 
                    \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                    >>
                >>
            \new Staff <<
                \context Staff << 
                    \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                    >>
                >>
            \new StaffGroup \with { \consists "Instrument_name_engraver"
                } <<
                \set StaffGroup.instrumentName = "Group 2"
                \set StaffGroup.shortInstrumentName = "Grp2"
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

