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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/tablature-fretboard-open-string.ly"
\sourcefileline 0
\version "2.16.0"
\header
{
  texidoc =
  "Tablatures derived from stored fretboard diagrams display open strings
as fret 0 in the tablature.  The tablature and fretboard should match."
}

#(define c-shape-fretboard-table (make-fretboard-table))

\storePredefinedDiagram #c-shape-fretboard-table
                         \chordmode{c}
                         #guitar-tuning
                         "x;3-3;2-2;o;1-1;o;"

cShape = {
   \set predefinedDiagramTable = #c-shape-fretboard-table
}

Chords = \chordmode {
   \cShape
   c,1 |
}

\score {
     <<
       \new ChordNames {
            \Chords
       }
       \new FretBoards {
         \Chords
       }
       \new Staff {
         \clef "treble_8"
         \Chords
       }
       \new TabStaff  {
         \Chords
       }
     >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
