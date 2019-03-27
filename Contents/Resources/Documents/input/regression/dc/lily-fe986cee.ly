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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/tuplet-text-different-numbers.ly"
\sourcefileline 0
\version "2.19.21"
\header{
  texidoc="Non-standard tuplet texts: Printing other tuplet fractions than the ones actually assigned."
}
\layout { ragged-right= ##t }


\context Voice \relative {
  \once \override TupletNumber.text = #(tuplet-number::non-default-tuplet-denominator-text 7)
  \tuplet 3/2  { c''4. c4. c4. c4. }
  \once \override TupletNumber.text = #(tuplet-number::non-default-tuplet-fraction-text 12 7)
  \tuplet 3/2  { c4. c4. c4. c4. }
  \once \override TupletNumber.text = #(tuplet-number::append-note-wrapper (tuplet-number::non-default-tuplet-fraction-text 12 7) "8")
  \tuplet 3/2  { c4. c4. c4. c4. }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
