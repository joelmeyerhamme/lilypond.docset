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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/musicxml/52a-PageLayout.xml"
\sourcefileline 0
\version "2.19.65"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Several page layout settings: 
          paper size, margins, system margins and distances, different fonts, 
          etc."
    title =  "Layout options"
    }

#(set-global-staff-size 10.7722857143)
\paper {
    
    paper-width = 17.0\cm
    paper-height = 8.99\cm
    top-margin = 0.5\cm
    bottom-margin = 0.7\cm
    left-margin = 3.0\cm
    right-margin = 2.0\cm
    between-system-space = 5.29\cm
    page-top-space = 4.11\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 | % 1
    R1*2 \pageBreak | % 3
    R1 \bar "|."
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
