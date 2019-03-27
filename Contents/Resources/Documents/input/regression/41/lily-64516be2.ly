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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/spacing-strict-notespacing.ly"
\sourcefileline 0
\header {


  texidoc = "If @code{strict-note-spacing} is set, then spacing of
notes is not influenced by bars and clefs half-way on the system.
Rather, they are put just before the note that occurs at the same
time.  This may cause collisions.  "

}


\version "2.19.21"

\paper {
  ragged-right = ##t
  indent = 0
}
\layout {
  \context {
    \Score
  }
}

\relative
<<
  \override Score.SpacingSpanner.strict-note-spacing = ##t 
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
  \new Staff {
    c''8[ c \clef alto c c \grace { d16 }  c8 c]  c4 c2
    \grace { c16 c16 }
    c2 }
  \new Staff {
    c2  \tuplet 3/2 { c8 \clef bass cis,, c } 
    c4
    c1
  }
>>
  



% ****************************************************************
% end ly snippet
% ****************************************************************
