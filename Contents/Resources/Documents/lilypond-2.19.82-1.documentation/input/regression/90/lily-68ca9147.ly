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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/in-note.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc = "LilyPond does in-notes.
"
}

#(set-default-paper-size "a6")
\book {
  \relative c' {
    \repeat unfold 5 {
      \once \override FootnoteItem.footnote = ##f
      \footnote
         "" #'(0 . 0)
         \markup { \box \fill-line { "this is a test" } } NoteHead
      \repeat unfold 5 { a\< b c d\! }
      \footnote #'(-1 . 1) "foobar" NoteHead
      \repeat unfold 5 { a\< b c d\! }
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************