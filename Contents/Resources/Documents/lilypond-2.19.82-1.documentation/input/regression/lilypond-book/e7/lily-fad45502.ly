%% Generated by lilypond-book.py
%% Options: [absolute,exampleindent=0.4\in,indent=0\mm,language=deutsch,line-width=6\in,no-beaming]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 6\in
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
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

%% additional definitions required by the score:
\language "deutsch"


\header {
    texidoc = 
    "One simple chord
                            consisting of two notes."
    }

PartPZeroVoiceOne =  {
    \clef "treble" \numericTimeSignature\time 4/4 | % 1
    <h' g'>4 r4 }


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
