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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/skyline-vertical-spacing.ly"
\sourcefileline 0
\header {
  texidoc = "We use a skyline algorithm to determine the distance to the next
system instead of relying only on bounding boxes. This keeps gaps between
systems more uniform."
}

\paper {ragged-right = ##t}
#(set-default-paper-size "a6")

\version "2.12.0"
\book {
  \score {
    {
      a,,1 | a'4 b' c'' d'' \break
      \repeat unfold 2 {a' b' c'' d''} | b''''1
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
