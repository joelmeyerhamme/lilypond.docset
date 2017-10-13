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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/musicxml/32d-Arpeggio.xml"
\sourcefileline 0
\version "2.19.65"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Different Arpeggio directions 
          (normal, up, down, non-arpeggiate)"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major | % 1
    <c e' g>4 \arpeggio \arpeggio \arpeggio \arpeggioArrowUp
    \arpeggioArrowUp \arpeggioArrowUp <c e' g>4 \arpeggio \arpeggio
    \arpeggio \arpeggioNormal \arpeggioNormal \arpeggioNormal <c e' g>4
    \arpeggio \arpeggio \arpeggio \arpeggioArrowDown \arpeggioArrowDown
    \arpeggioArrowDown <c e' g>4 \arpeggio \arpeggio \arpeggio
    \arpeggioNormal \arpeggioNormal \arpeggioNormal <c e' g>4 \arpeggio
    \arpeggio \arpeggio \arpeggioBracket \arpeggioBracket <c e' g>4
    \arpeggio \arpeggio \arpeggioNormal \arpeggioNormal <c e' g>4
    \arpeggio \arpeggio \arpeggio \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode {\set ignoreMelismata = ##t
    normal up normal down normal "non-arp." normal
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
