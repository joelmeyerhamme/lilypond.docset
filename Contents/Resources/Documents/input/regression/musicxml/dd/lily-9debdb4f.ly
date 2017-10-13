%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "out-www/74a-FiguredBass.ly"
\sourcefileline 0

\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/74a-FiguredBass.xml

\header {
    texidoc = "Some figured bass containing 
          alterated figures, bracketed figures and slashed figures. The last 
          note contains an empty <figured-bass> element, which is 
          invalid MusicXML, to check how well applications cope with malformed 
          files.

          Note that this file does not contain any extenders!"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative g' {
    \clef "treble" \key c \major \time 4/4 | % 1
    g8 g8 g8. g16 g8.*4/3 g4 \bar "|."
    }

PartPOneVoiceOneFiguredBass =  \figuremode {
    | % 1
    <3>8 s8 <1+ 3- 5!>8. <[6]>16 <5/ 127/>4 }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \context FiguredBass = "PartPOneVoiceOneFiguredBass" \PartPOneVoiceOneFiguredBass
        >>
    >>




% ****************************************************************
% end ly snippet
% ****************************************************************