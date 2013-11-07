
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/41c-StaffGroups.xml

\header {
    texidoc = "A huge orchestra score with 28 
          parts and different kinds of nested bracketed groups. Each part/group 
          is assigned a name and an abbreviation to be shown before the staff. 
          Also, most of the groups show unbroken barlines, while the barlines 
          are broken between the groups."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b' {
    \transposition c'' \clef "treble" \key c \major \time 4/4 b4 r4 r2
    \bar "|."
    }

PartPTwoVoiceOne =  \relative f' {
    \clef "treble" \key c \major \time 4/4 f4 r4 r2 \bar "|."
    }

PartPThreeVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 4/4 a4 r4 r2 \bar "|."
    }

PartPFourVoiceOne =  \relative e'' {
    \clef "treble" \key c \major \time 4/4 e4 r4 r2 \bar "|."
    }

PartPFiveVoiceOne =  \relative c'' {
    \transposition f \clef "treble" \key g \major \time 4/4 c4 r4 r2
    \bar "|."
    }

PartPSixVoiceOne =  \relative b' {
    \transposition es' \clef "treble" \key a \major \time 4/4 b4 r4 r2
    \bar "|."
    }

PartPSevenVoiceOne =  \relative fis' {
    \transposition bes \clef "treble" \key d \major \time 4/4 fis4 r4 r2
    \bar "|."
    }

PartPEightVoiceOne =  \relative cis'' {
    \transposition bes \clef "treble" \key d \major \time 4/4 cis4 r4 r2
    \bar "|."
    }

PartPNineVoiceOne =  \relative b' {
    \transposition bes, \clef "treble" \key d \major \time 4/4 b4 r4 r2
    \bar "|."
    }

PartPOneZeroVoiceOne =  \relative d {
    \clef "bass" \key c \major \time 4/4 d4 r4 r2 \bar "|."
    }

PartPOneOneVoiceOne =  \relative e {
    \clef "bass" \key c \major \time 4/4 e4 r4 r2 \bar "|."
    }

PartPOneTwoVoiceOne =  \relative b, {
    \transposition c \clef "bass" \key c \major \time 4/4 b4 r4 r2 \bar
    "|."
    }

PartPOneThreeVoiceOne =  \relative e'' {
    \transposition f \clef "treble" \key g \major \time 4/4 e4 r4 r2
    \bar "|."
    }

PartPOneFourVoiceOne =  \relative g' {
    \transposition f \clef "treble" \key g \major \time 4/4 g4 r4 r2
    \bar "|."
    }

PartPOneFiveVoiceOne =  \relative f' {
    \clef "treble" \key c \major \time 4/4 f4 r4 r2 \bar "|."
    }

PartPOneSixVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 4/4 a4 r4 r2 \bar "|."
    }

PartPOneSevenVoiceOne =  \relative b, {
    \clef "bass" \key c \major \time 4/4 b4 r4 r2 \bar "|."
    }

PartPOneEightVoiceOne =  \relative e {
    \clef "bass" \key c \major \time 4/4 e4 r4 r2 \bar "|."
    }

PartPOneNineVoiceOne =  \relative e {
    \clef "bass" \key c \major \time 4/4 e4 r4 r2 \bar "|."
    }

PartPTwoZeroVoiceOne =  \relative f {
    \clef "bass" \key c \major \time 4/4 f4 r4 r2 \bar "|."
    }

PartPTwoOneVoiceOne =  \relative e'' {
    \clef "percussion" \key c \major \time 4/4 e4 r4 r2 \bar "|."
    }

PartPTwoTwoVoiceOne =  \relative d'' {
    \clef "treble" \key c \major \time 4/4 d4 r4 r2 \bar "|."
    }

PartPTwoTwoVoiceTwo =  \relative a, {
    \clef "bass" \key c \major \time 4/4 a4 r4 r2 \bar "|."
    }

PartPTwoThreeVoiceOne =  \relative g' {
    \clef "treble" \key c \major \time 4/4 g4 r4 r2 \bar "|."
    }

PartPTwoThreeVoiceTwo =  \relative e {
    \clef "bass" \key c \major \time 4/4 e4 r4 r2 \bar "|."
    }

PartPTwoFourVoiceOne =  \relative e'' {
    \clef "treble" \key c \major \time 4/4 e4 r4 r2 \bar "|."
    }

PartPTwoFiveVoiceOne =  \relative f' {
    \clef "treble" \key c \major \time 4/4 f4 r4 r2 \bar "|."
    }

PartPTwoSixVoiceOne =  \relative c' {
    \clef "alto" \key c \major \time 4/4 c4 r4 r2 \bar "|."
    }

PartPTwoSevenVoiceOne =  \relative c {
    \clef "bass" \key c \major \time 4/4 c4 r4 r2 \bar "|."
    }

PartPTwoEightVoiceOne =  \relative c {
    \transposition c \clef "bass" \key c \major \time 4/4 c4 r4 r2 \bar
    "|."
    }


% The score definition
\score {
    <<
        \new StaffGroup <<
            \new Staff <<
                \set Staff.instrumentName = "Piccolo"
                \set Staff.shortInstrumentName = "Picc."
                \context Staff << 
                    \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                    >>
                >>
            \new StaffGroup \with { \override SpanBar #'transparent =
                ##t } <<
                \new Staff <<
                    \set Staff.instrumentName = "Flute 1"
                    \set Staff.shortInstrumentName = "Fl. 1"
                    \context Staff << 
                        \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Flute 2"
                    \set Staff.shortInstrumentName = "Fl. 2"
                    \context Staff << 
                        \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                        >>
                    >>
                
                >>
            \new StaffGroup \with { \consists "Instrument_name_engraver"
                } <<
                \set StaffGroup.instrumentName = "Oboe through Clarinet"
                \set StaffGroup.shortInstrumentName = "O to Cl"
                \new StaffGroup \with { systemStartDelimiter =
                    #'SystemStartSquare } <<
                    \new Staff <<
                        \set Staff.instrumentName = "Oboe"
                        \set Staff.shortInstrumentName = "Ob."
                        \context Staff << 
                            \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
                            >>
                        >>
                    \new Staff <<
                        \set Staff.instrumentName = "English Horn"
                        \set Staff.shortInstrumentName = "E. Hn."
                        \context Staff << 
                            \context Voice = "PartPFiveVoiceOne" { \PartPFiveVoiceOne }
                            >>
                        >>
                    
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Clarinet in Eb"
                    \set Staff.shortInstrumentName = "Eb Cl."
                    \context Staff << 
                        \context Voice = "PartPSixVoiceOne" { \PartPSixVoiceOne }
                        >>
                    >>
                
                >>
            \new StaffGroup \with { \override SpanBar #'transparent =
                ##t } <<
                \new Staff <<
                    \set Staff.instrumentName = "Clarinet in Bb 1"
                    \set Staff.shortInstrumentName = "Bb Cl. 1"
                    \context Staff << 
                        \context Voice = "PartPSevenVoiceOne" { \PartPSevenVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Clarinet in Bb 2"
                    \set Staff.shortInstrumentName = "Bb Cl. 2"
                    \context Staff << 
                        \context Voice = "PartPEightVoiceOne" { \PartPEightVoiceOne }
                        >>
                    >>
                
                >>
            \new Staff <<
                \set Staff.instrumentName = "Bass Clarinet"
                \set Staff.shortInstrumentName = "B. Cl."
                \context Staff << 
                    \context Voice = "PartPNineVoiceOne" { \PartPNineVoiceOne }
                    >>
                >>
            \new StaffGroup \with { \override SpanBar #'transparent =
                ##t } <<
                \new Staff <<
                    \set Staff.instrumentName = "Bassoon 1"
                    \set Staff.shortInstrumentName = "Bsn. 1"
                    \context Staff << 
                        \context Voice = "PartPOneZeroVoiceOne" { \PartPOneZeroVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Bassoon 2"
                    \set Staff.shortInstrumentName = "Bsn. 2"
                    \context Staff << 
                        \context Voice = "PartPOneOneVoiceOne" { \PartPOneOneVoiceOne }
                        >>
                    >>
                
                >>
            \new Staff <<
                \set Staff.instrumentName = "Contrabassoon"
                \set Staff.shortInstrumentName = "C. Bn."
                \context Staff << 
                    \context Voice = "PartPOneTwoVoiceOne" { \PartPOneTwoVoiceOne }
                    >>
                >>
            
            >>
        \new StaffGroup <<
            \new StaffGroup \with { \override SpanBar #'transparent =
                ##t } <<
                \new Staff <<
                    \set Staff.instrumentName = "Horn in F 1"
                    \set Staff.shortInstrumentName = "Hn. 1"
                    \context Staff << 
                        \context Voice = "PartPOneThreeVoiceOne" { \PartPOneThreeVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Horn in F 2"
                    \set Staff.shortInstrumentName = "Hn. 2"
                    \context Staff << 
                        \context Voice = "PartPOneFourVoiceOne" { \PartPOneFourVoiceOne }
                        >>
                    >>
                
                >>
            \new StaffGroup \with { \override SpanBar #'transparent =
                ##t } <<
                \new Staff <<
                    \set Staff.instrumentName = "Trumpet in C 1"
                    \set Staff.shortInstrumentName = "C Tpt. 1"
                    \context Staff << 
                        \context Voice = "PartPOneFiveVoiceOne" { \PartPOneFiveVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Trumpet in C 2"
                    \set Staff.shortInstrumentName = "C Tpt. 2"
                    \context Staff << 
                        \context Voice = "PartPOneSixVoiceOne" { \PartPOneSixVoiceOne }
                        >>
                    >>
                
                >>
            \new StaffGroup \with { \override SpanBar #'transparent =
                ##t } <<
                \new Staff <<
                    \set Staff.instrumentName = "Trombone 1"
                    \set Staff.shortInstrumentName = "Tbn. 1"
                    \context Staff << 
                        \context Voice = "PartPOneSevenVoiceOne" { \PartPOneSevenVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Trombone 2"
                    \set Staff.shortInstrumentName = "Tbn. 2"
                    \context Staff << 
                        \context Voice = "PartPOneEightVoiceOne" { \PartPOneEightVoiceOne }
                        >>
                    >>
                
                >>
            \new Staff <<
                \set Staff.instrumentName = "Tuba"
                \set Staff.shortInstrumentName = "Tuba"
                \context Staff << 
                    \context Voice = "PartPOneNineVoiceOne" { \PartPOneNineVoiceOne }
                    >>
                >>
            
            >>
        \new Staff <<
            \set Staff.instrumentName = "Timpani"
            \set Staff.shortInstrumentName = "Timp."
            \context Staff << 
                \context Voice = "PartPTwoZeroVoiceOne" { \PartPTwoZeroVoiceOne }
                >>
            >>
        \new DrumStaff <<
            \set DrumStaff.instrumentName = "Percussion"
            \set DrumStaff.shortInstrumentName = "Perc."
            \context DrumStaff << 
                \context DrumVoice = "PartPTwoOneVoiceOne" { \PartPTwoOneVoiceOne }
                >>
            >>
        \new PianoStaff <<
            \set PianoStaff.instrumentName = "Harp"
            \set PianoStaff.shortInstrumentName = "Hp."
            \context Staff = "1" << 
                \context Voice = "PartPTwoTwoVoiceOne" { \PartPTwoTwoVoiceOne }
                >> \context Staff = "2" <<
                \context Voice = "PartPTwoTwoVoiceTwo" { \PartPTwoTwoVoiceTwo }
                >>
            >>
        \new PianoStaff <<
            \set PianoStaff.instrumentName = "Piano"
            \set PianoStaff.shortInstrumentName = "Pno."
            \context Staff = "1" << 
                \context Voice = "PartPTwoThreeVoiceOne" { \PartPTwoThreeVoiceOne }
                >> \context Staff = "2" <<
                \context Voice = "PartPTwoThreeVoiceTwo" { \PartPTwoThreeVoiceTwo }
                >>
            >>
        \new StaffGroup <<
            \new Staff <<
                \set Staff.instrumentName = "Violin I"
                \set Staff.shortInstrumentName = "Vln. I"
                \context Staff << 
                    \context Voice = "PartPTwoFourVoiceOne" { \PartPTwoFourVoiceOne }
                    >>
                >>
            \new Staff <<
                \set Staff.instrumentName = "Violin II"
                \set Staff.shortInstrumentName = "Vln. II"
                \context Staff << 
                    \context Voice = "PartPTwoFiveVoiceOne" { \PartPTwoFiveVoiceOne }
                    >>
                >>
            \new Staff <<
                \set Staff.instrumentName = "Viola"
                \set Staff.shortInstrumentName = "Vla."
                \context Staff << 
                    \context Voice = "PartPTwoSixVoiceOne" { \PartPTwoSixVoiceOne }
                    >>
                >>
            \new Staff <<
                \set Staff.instrumentName = "Cello"
                \set Staff.shortInstrumentName = "Vc."
                \context Staff << 
                    \context Voice = "PartPTwoSevenVoiceOne" { \PartPTwoSevenVoiceOne }
                    >>
                >>
            \new Staff <<
                \set Staff.instrumentName = "Contrabass"
                \set Staff.shortInstrumentName = "Cb."
                \context Staff << 
                    \context Voice = "PartPTwoEightVoiceOne" { \PartPTwoEightVoiceOne }
                    >>
                >>
            
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

