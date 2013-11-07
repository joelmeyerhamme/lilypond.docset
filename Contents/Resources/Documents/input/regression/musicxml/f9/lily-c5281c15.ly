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
\sourcefilename "out-www/23a-Tuplets.ly"
\sourcefileline 0

\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/23a-Tuplets.xml

\header {
    texidoc = "Some tuplets (3:2, 3:2, 3:2, 4:2, 
          4:1, 7:3, 6:2) with the default tuplet bracket displaying the number 
          of actual notes played. The second tuplet does not have a number 
          attribute set."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 14/4 \times 2/3 {
        c4 d4 e4 }
    \times 2/3  {
        f4 g4 a4 }
    \times 2/3  {
        b4 c4 d4 }
    \times 2/4  {
        e4 f4 g4 a4 }
    \times 1/4  {
        b4 c4 c4 b4 }
    \times 3/7  {
        a4 g4 f4 e4 d4 c4 b4 }
    \times 2/6  {
        a4 g4 f4 e4 d4 c4 }
    \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>




% ****************************************************************
% end ly snippet
% ****************************************************************
