%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/musicxml/71d-ChordsFrets-Multistaff.xml"
\sourcefileline 0
\version "2.19.81"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Chords and fretboards assigned to 
          the voices in a multi-voice, multi-staff part. There should be fret 
          diagrams above each of the two staves."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative d'' {
    \clef "treble" \key c \major \time 4/4 | % 1
    d4 d4 d4 ^\markup { \fret-diagram #"6-o;5-6;4-4;3-6;2-6;1-x;" } d4
    \bar "|."
    }

PartPOneVoiceOneChords =  \chordmode {
    | % 1
    s4 s4 es4:m9 s4 \bar "|."
    }

PartPOneVoiceThree =  \relative d {
    \clef "bass" \key c \major \time 4/4 d4 ^\markup { \fret-diagram
        #"6-o;5-3;4-2;3-o;2-1;1-o;" } d4 ^\markup { \fret-diagram
        #"6-o;5-o;4-o;3-2;2-1;1-2;" } d4 d4 ^\markup { \fret-diagram
        #"6-o;5-3;4-1;3-3;2-1;1-1;" } \bar "|."
    }

PartPOneVoiceThreeChords =  \chordmode {
    c4:5 d4:7 s4 c4:m7.11 \bar "|."
    }

PartPOneVoiceTwo =  \relative f' {
    \clef "treble" \key c \major \time 4/4 f4 f4 f4 f4 \bar "|."
    }

PartPOneVoiceFour =  \relative b, {
    \clef "bass" \key c \major \time 4/4 b4 b4 b4 b4 \bar "|."
    }


% The score definition
\score {
    <<
        
        \context ChordNames = "PartPOneVoiceOneChords" { \PartPOneVoiceOneChords}
        \context ChordNames = "PartPOneVoiceThreeChords" { \PartPOneVoiceThreeChords}
        \new PianoStaff
        <<
            
            \context Staff = "1" << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \voiceOne \PartPOneVoiceOne }
                \context Voice = "PartPOneVoiceTwo" {  \voiceTwo \PartPOneVoiceTwo }
                >> \context Staff = "2" <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceThree" {  \voiceOne \PartPOneVoiceThree }
                \context Voice = "PartPOneVoiceFour" {  \voiceTwo \PartPOneVoiceFour }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }




% ****************************************************************
% end ly snippet
% ****************************************************************
