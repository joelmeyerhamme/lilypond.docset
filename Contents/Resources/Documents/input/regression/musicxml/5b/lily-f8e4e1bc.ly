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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/musicxml/12a-Clefs.xml"
\sourcefileline 0
\version "2.19.65"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Various clefs: G, C, F, percussion, 
          TAB and none; some are also possible with transposition and on other
          staff lines than their default (e.g. soprano/alto/tenor/baritone C
          clefs); Each measure shows a different clef (measure 17 has the \"
    none\" clef), only measure 18 has the same treble clef as measure
    1."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 | % 1
    c1 | % 2
    \clef "alto" | % 2
    c1 | % 3
    \clef "tenor" | % 3
    c1 | % 4
    \clef "bass" | % 4
    c1 | % 5
    \clef "percussion" | % 5
    c1 | % 6
    \clef "treble_8" | % 6
    c1 | % 7
    \clef "bass_8" | % 7
    c1 | % 8
    \clef "varbaritone" | % 8
    c1 | % 9
    \clef "french" | % 9
    c1 | \barNumberCheck #10
    \clef "baritone" | \barNumberCheck #10
    c1 | % 11
    \clef "mezzosoprano" | % 11
    c1 | % 12
    \clef "soprano" | % 12
    c1 | % 13
    \clef "percussion" | % 13
    c1 | % 14
    \clef "treble^8" | % 14
    c1 | % 15
    \clef "bass^8" | % 15
    c1 | % 16
    \clef "tab" | % 16
    c1 | % 17
    \clef "None" | % 17
    c1 | % 18
    \clef "treble" | % 18
    c1 \bar "|."
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