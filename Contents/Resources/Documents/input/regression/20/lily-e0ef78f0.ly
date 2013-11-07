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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/page-label.ly"
\sourcefileline 0
\version "2.12.0"

\header {
  texidoc = "Page labels may be placed inside music or at top-level,
and refered to in markups."
}

#(set-default-paper-size "a6")

#(define-markup-command (toc-line layout props label text) (symbol? markup?)
  (interpret-markup layout props
   (markup #:fill-line (text #:page-ref label "8" "?"))))

\book {
  \markup \huge \fill-line { \null "Title Page" \null }

  \pageBreak

  \label #'toc
  \markup \column {
    \large \fill-line { \null "Table of contents" \null }
    \toc-line #'toc "Table of contents"
    \toc-line #'firstScore "First Score"
    \toc-line #'markA "Mark A"
    \toc-line #'markB "Mark B"
    \toc-line #'markC "Mark C"
    \toc-line #'unknown "Unknown label"
  }

  \pageBreak

  \label #'firstScore
  \score {
    { c'2 c'
      \mark \markup { A (page \concat { \page-ref #'markA "0" "?" ) }} \label #'markA 
      c' c'
      \pageBreak
      \mark "B" \label #'markB
      d' d'
      d' d'
      \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
      \mark "C" \label #'markC
    }
    \header { piece = "First score" }
  }
}


% ****************************************************************
% end ly snippet
% ****************************************************************
