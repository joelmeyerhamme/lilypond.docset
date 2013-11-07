
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/73a-Percussion.xml

\header {
    texidoc = "Three types of percussion staves: 
          A five-line staff with bass clef for Timpani, a five-line staff with 
          percussion clef, and a one-line percussion staff with only unpitched 
          notes."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e {
    \clef "bass" \key c \major \numericTimeSignature\time 4/4 e1 ~ | % 2
    e2 a,2 \bar "|."
    }

PartPTwoVoiceOne =  \relative e'' {
    \clef "percussion" \key c \major \numericTimeSignature\time 4/4 e2.
    c4 | % 2
    d1 \bar "|."
    }

PartPThreeVoiceOne =  \relative f' {
    \clef "percussion" \numericTimeSignature\time 4/4 f2. f4 | % 2
    e1 \bar "|."
    }


% The score definition
\score {
    <<
        \new Staff <<
            \set Staff.instrumentName = "Timpani"
            \set Staff.shortInstrumentName = "Timp."
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                >>
            >>
        \new StaffGroup <<
            \new DrumStaff <<
                \set DrumStaff.instrumentName = "Cymbals"
                \set DrumStaff.shortInstrumentName = "Cym."
                \context DrumStaff << 
                    \context DrumVoice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                    >>
                >>
            \new RhythmicStaff <<
                \set RhythmicStaff.instrumentName = "Triangle"
                \set RhythmicStaff.shortInstrumentName = "Tri."
                \context RhythmicStaff << 
                    \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                    >>
                >>
            
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

