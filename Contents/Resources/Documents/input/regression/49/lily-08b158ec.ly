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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/fret-diagrams-string-thickness.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc="
String thickness can be changed, and diagrams can have variable
string thickness.
"
}

\layout { ragged-right = ##t }

<<
  \chords {
    c1 |
    c1 |
    c1
  }

  \new Voice {
    \textLengthOn
     %% C major for guitar,  verbose style
    c'1 ^\markup {
            \fret-diagram-verbose #'((mute 6)
                                     (place-fret 5 3 1)
                                     (place-fret 4 5 2)
                                     (place-fret 3 5 3)
                                     (place-fret 2 5 4)
                                     (place-fret 1 3 1)
                                     (barre 5 1 3))}

     %% C major for guitar,  verbose style
    \once \override TextScript.thickness = #1.5 
    c'1 ^\markup {
            \fret-diagram-verbose #'((mute 6)
                                     (place-fret 5 3 1)
                                     (place-fret 4 5 2)
                                     (place-fret 3 5 3)
                                     (place-fret 2 5 4)
                                     (place-fret 1 3 1)
                                     (barre 5 1 3))}

     %% C major for guitar, verbose style
    \once \override TextScript.fret-diagram-details.string-thickness-factor = #0.3
    c' ^\markup {
            \fret-diagram-verbose #'((mute 6)
                                     (place-fret 5 3 1)
                                     (place-fret 4 5 2)
                                     (place-fret 3 5 3)
                                     (place-fret 2 5 4)
                                     (place-fret 1 3 1)
                                     (barre 5 1 3))}


 }
>>





% ****************************************************************
% end ly snippet
% ****************************************************************