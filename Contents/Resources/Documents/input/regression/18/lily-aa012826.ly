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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/bar-line-segno.ly"
\sourcefileline 0
\version "2.19.21"

\header { texidoc = "Segno bar lines can be used to mark
                     the begin and the end of a segno part."
        }

\paper { ragged-right = ##t }

\relative \new StaffGroup <<
  \new Staff {
    c'4 \bar "S" c \bar "S-|" c \bar "S-S" c \bar ":|.S" \break
    c4 c \bar ":|.S.|:" c c \bar ":|.S.|:-S" \break
    c4 c c2 \bar "S.|:" \break
    c1 \bar ":|.S-S" \break
    c1 \bar "S" \break
    c1 }
  \new Staff {
    c4 c c c
    c4 c c c
    c4 c c c
    c4 c c c
    c4 c c c
    c1
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
