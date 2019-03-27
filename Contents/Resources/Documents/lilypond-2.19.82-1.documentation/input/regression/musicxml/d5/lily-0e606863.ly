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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/musicxml/42a-MultiVoice-TwoVoicesOnStaff-Lyrics.xml"
\sourcefileline 0
\version "2.19.81"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Two voices share one staff. Each 
        voice is assigned some lyrics."
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e'' {
    \clef "treble" \key c \major \time 4/4 | % 1
    \stemUp e2 ^\fermata _> \stemUp d4 _\mf \stemUp b4 | % 2
    a'4 \rest \stemUp d,4 \stemUp b,4. ( \stemUp c'8 ) | % 3
    R1 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode {\set ignoreMelismata = ##t This
    is the lyrics of "Voice1"
    }

PartPOneVoiceTwo =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 \stemDown c2 ^\fermata _>
    \stemDown b4 \stemDown g4 c,4 \rest \stemDown b'4 \stemDown g,4. (
    \stemDown a'8 ) s1 \bar "|."
    }

PartPOneVoiceTwoLyricsOne =  \lyricmode {\set ignoreMelismata = ##t This
    is the lyrics of "Voice2"
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \voiceOne \PartPOneVoiceOne }
                \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
                \context Voice = "PartPOneVoiceTwo" {  \voiceTwo \PartPOneVoiceTwo }
                \new Lyrics \lyricsto "PartPOneVoiceTwo" { \set stanza = "1." \PartPOneVoiceTwoLyricsOne }
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
