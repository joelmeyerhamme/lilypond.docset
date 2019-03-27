%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,papersize=a8,quote,ragged-right]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(set-paper-size "a8")
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  ragged-right = ##t
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1385
\book {
  \header { tagline = ##f }
  \relative {
    a'4-\footnote
      \markup { \teeny 1 } #'(-3 . 0)
      \markup { 1. \bold フォルテ } \f
    -\footnote
      \markup { \teeny b } #'(0 . 1.5)
      \markup { b. スラー } (
    b8)-\footnote
      \markup { \teeny 3 } #'(0 . -2)
      \markup { 3. 連桁 } [
    e]
    \single\footnote
      \markup { 4 } #'(1 . -1)
      \markup  { \bold 4. { これは符幹です } } Stem
    c4
    \single\footnote
      \markup \concat \teeny { "sharp (v)" }
          #'(0 . 0.5)
      \markup \italic { v. 忠告の臨時記号 } AccidentalCautionary
    dis?4-\footnote
      \markup \concat \teeny { "a" } #'(0.5 . -0.5)
      \markup \italic { a. スローダウン } _"rit."
    \footnote
      \markup { \teeny \musicglyph "rests.4" }
          #'(1.5 . -0.25)
      \markup { \null } \breathe
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
