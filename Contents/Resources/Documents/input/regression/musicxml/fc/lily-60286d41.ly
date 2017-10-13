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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/musicxml/41e-StaffGroups-InstrumentNames-Linebroken.xml"
\sourcefileline 0
\version "2.19.65"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Part names and abbreviations can 
          contain line breaks."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b' {
    \clef "treble" \key c \major \time 4/4 | % 1
    b1 | % 2
    b1 | % 3
    b1 | % 4
    b1 | % 5
    b1 \break | % 6
    b1 | % 7
    b1 | % 8
    b1 | % 9
    b1 | \barNumberCheck #10
    b1 | % 11
    b1 | % 12
    b1 | % 13
    b1 | % 14
    b1 \break | % 15
    b1 | % 16
    b1 | % 17
    b1 | % 18
    b1 | % 19
    b1 | \barNumberCheck #20
    b1 | % 21
    b1 | % 22
    b1 | % 23
    R1 \bar "|."
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            \set Staff.instrumentName = \markup { \center-column { \line {"Long"} \line {"Staff"} \line {"Name"} } }
            \set Staff.shortInstrumentName = \markup { \center-column { \line {"St."} \line {"Nm."} } }
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
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
