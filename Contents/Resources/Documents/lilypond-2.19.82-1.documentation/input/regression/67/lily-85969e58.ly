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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/ledger-positions-customization.ly"
\sourcefileline 0

\header {

texidoc = "3 ways to customize ledger line positions."

}

\version "2.19.41"
\paper { ragged-right = ##t }

\relative {
  \override Staff.StaffSymbol.ledger-positions = #'(7 10)
  f''4 g a b c d e f g a b c
}

\relative {
  % note: the scheme procedure (lambda expression) is quoted
  \override Staff.StaffSymbol.ledger-positions-function =
    #'(lambda (staff-symbol-grob pos) (list pos))
  c'''4 d e f
}

\relative {
  c'''4
  \once \override NoteHead.ledger-positions = #'(8 10 12 14)
  d e f
}



% ****************************************************************
% end ly snippet
% ****************************************************************
