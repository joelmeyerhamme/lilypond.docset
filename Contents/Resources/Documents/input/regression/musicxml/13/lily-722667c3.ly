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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/musicxml/61h-Lyrics-BeamsMelismata.xml"
\sourcefileline 0
\version "2.19.65"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Beaming or slurs can indicate 
          melismata for lyrics. Also make sure that notes without an explicit
          syllable are treated as if they were part of a melisma."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    | % 1
    c8 [ a8 c8 ] a8 c8 [ g8 b8 ] r8 | % 2
    c8 a8 c8 a8 c8 g8 b8 r8 | % 3
    c8 ( a8 c8 ) a8 c8 ( g8 b8 ) r8 | % 4
    c8 ( a8 c8 a8 c8 g8 b8 ) r8 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode {\set ignoreMelismata = ##t Me
    --\skip1 \skip1 lis -- "ma " __\skip1 \skip1 Me --\skip1 \skip1 lis
    -- "ma " __\skip1 \skip1 Me --\skip1 \skip1 lis -- "ma " __\skip1
    \skip1 Me --\skip1 \skip1 lis -- "ma " __\skip1 \skip1
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
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
