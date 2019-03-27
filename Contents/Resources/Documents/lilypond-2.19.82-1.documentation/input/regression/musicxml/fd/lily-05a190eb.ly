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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/musicxml/01f-Pitches-ParenthesizedMicrotoneAccidentals.xml"
\sourcefileline 0
\version "2.19.81"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Microtone accidentals can be
          cautionary or editorial. Each measure has a normal accidental,
          an editorial, a cautionary and an editioal and cautionary
          accidental."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative deh' {
    \clef "treble" \key c \major \time 4/4 | % 1
    deh4 deh4 deh ?4 deh ?4 | % 2
    cis4 cis4 cis ?4 cis ?4 | % 3
    deseh4 deseh4 deseh ?4 deseh ?4 | % 4
    cisih4 cisih4 cisih ?4 cisih ?4 }


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
