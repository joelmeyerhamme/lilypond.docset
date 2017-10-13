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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/fret-diagrams-opposing-landscape.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc="
Fret diagrams can be presented in landscape mode.

"
}

\layout { ragged-right = ##t }

<<
  \chords {
    c1 |
    c1 |
    c1 |
    c1
  }

  \new Voice {
    \textLengthOn
    \override TextScript.fret-diagram-details.orientation = #'opposing-landscape

     %% C major for guitar, regular style
    c'1 ^\markup {
            \fret-diagram #"6-x;5-3-3;4-2-2;3-o;2-1;1-o;"}

     %% C major for guitar with barre on fret 3, regular style
    \once \override TextScript.fret-diagram-details.label-dir = #LEFT
    \once \override TextScript.fret-diagram-details.barre-type = #'straight
    c' ^\markup {
            \fret-diagram 
               #"f:1;s:1.2;6-x;c:5-1-3;5-3-1;4-5-2;3-5-3;2-5-4;1-3-1;"}

     %% C major for guitar with two barres, regular style

    c' ^\markup {
            \fret-diagram 
              #"f:2;h:5;6-x;c:5-1-3;5-3-1;c:4-2-5;4-5-4;3-5-4;2-5-4;1-3-1;"}
   
     %% C major for guitar, with capo 
    c' ^\markup {
            \fret-diagram-verbose #'((mute 6)
                                     (capo 3)
                                     (place-fret 4 5 1)
                                     (place-fret 3 5 2)
                                     (place-fret 2 5 3))}

 }
>>





% ****************************************************************
% end ly snippet
% ****************************************************************
