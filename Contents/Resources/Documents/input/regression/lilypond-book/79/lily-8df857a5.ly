%% Generated by lilypond-book.py
%% Options: [indent=0\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "include.xml"
\sourcefileline 0
\version "2.19.81"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "One simple chord
                            consisting of two notes."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPZeroVoiceOne =  \relative b' {
    \clef "treble" \numericTimeSignature\time 4/4 | % 1
    <b g>4 r4 }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPZeroVoiceOne" {  \PartPZeroVoiceOne }
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
