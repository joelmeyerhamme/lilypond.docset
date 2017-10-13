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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/musicxml/01b-Pitches-Intervals.xml"
\sourcefileline 0
\version "2.19.65"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc =  "All pitch intervals in ascending 
          jump size."
    title =  "Various pitches and interval sizes"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 2/4 | % 1
    c4 c4 | % 2
    cis4 ces4 | % 3
    des4 bis4 | % 4
    d4 b4 | % 5
    dis4 bes4 | % 6
    es4 ais,4 | % 7
    e'4 a,4 | % 8
    eis'4 as,4 | % 9
    fes'4 gis,4 | \barNumberCheck #10
    f'4 g,4 | % 11
    fis'4 ges,4 | % 12
    ges'4 fis,4 | % 13
    g'4 f,4 | % 14
    gis'4 fes,4 | % 15
    as'4 eis,4 | % 16
    a'4 e,4 | % 17
    ais'4 es,4 | % 18
    bes''4 dis,,4 | % 19
    b''4 d,,4 | \barNumberCheck #20
    bis''4 des,,4 | % 21
    ces''4 cis,,4 | % 22
    c''4 c,,4 | % 23
    cis''4 ces,,4 | % 24
    des''4 bis,,4 | % 25
    d''4 b,,4 | % 26
    dis''4 bes,,4 | % 27
    es''4 ais,,,4 | % 28
    e'''4 a,,,4 | % 29
    eis'''4 as,,,4 | \barNumberCheck #30
    fes'''4 gis,,,4 | % 31
    f'''4 g,,,4 | % 32
    fis'''4 ges,,,4 | % 33
    ges'''4 fis,,,4 | % 34
    g'''4 f,,,4 | % 35
    gis'''4 fes,,,4 | % 36
    as'''4 eis,,,4 | % 37
    a'''4 e,,,4 | % 38
    ais'''4 es,,,4 | % 39
    bes''''4 dis,,,,4 | \barNumberCheck #40
    b''''4 d,,,,4 | % 41
    bis''''4 des,,,,4 }


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