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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/spacing-grace.ly"
\sourcefileline 0
\header
{
  texidoc = "Grace note runs have their own spacing variables in
  @code{Score.GraceSpacing}. So differing grace note lengths inside a
  run are spaced accordingly. "
}

\version "2.12.0"

\paper {  ragged-right = ##t }

\relative c''
{
  c4
  \grace { c16  }
  c
  \grace { c16  }
  d
  \grace { c16[ d e f] }
  c
  \grace { c8[ c16 d c8]  }
  c
  \override Score.GraceSpacing #'spacing-increment = #2.0

  \grace { c4 c16 d16  }
  c
} 



% ****************************************************************
% end ly snippet
% ****************************************************************