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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/musicxml/11a-TimeSignatures.xml"
\sourcefileline 0
\version "2.19.81"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Various time signatures: 2/2 
            (alla breve), 4/4 (C), 2/2, 3/2, 2/4, 3/4, 4/4, 5/4, 3/8, 6/8, 
            12/8"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 2/2 | % 1
    c1 | % 2
    \time 4/4  | % 2
    c1 | % 3
    \numericTimeSignature\time 2/2  | % 3
    c1 | % 4
    \time 3/2  | % 4
    c1. | % 5
    \time 2/4  | % 5
    c2 | % 6
    \time 3/4  | % 6
    c2. | % 7
    \numericTimeSignature\time 4/4  | % 7
    c1 | % 8
    \time 5/4  | % 8
    c1 ~ c4 | % 9
    \time 3/8  | % 9
    c4. | \barNumberCheck #10
    \time 6/8  | \barNumberCheck #10
    c2. | % 11
    \time 12/8  | % 11
    c1. \bar "|."
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            
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
