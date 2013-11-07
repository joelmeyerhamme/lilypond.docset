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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/part-combine-tuplet-single.ly"
\sourcefileline 0

\header {
  texidoc = "Tuplets in combined parts only print one bracket."
  }

\paper { ragged-right = ##T }

\version "2.12.0"

\score {
  <<
    \new Staff {
      \partcombine
      \relative c'' {
        \times 2/3 { d4 d d ~ } d2
      }
      \relative c'' {
        \times 2/3 { b4 a g ~ } g2
      }
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
