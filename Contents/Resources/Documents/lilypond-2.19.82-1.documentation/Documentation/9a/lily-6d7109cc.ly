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
\sourcefileline 1340
\book {
  \header { tagline = ##f }
  \relative c' {
    \footnote
          "1" #'(0.5 . -2)
          \markup { \italic "1. 最初の音符" }
    a'4
    b8
    \footnote
          \markup { \bold "2" } #'(0.5 . 1)
          "2. 2 番目の音符"
    e
    c4
    d-\footnote "3" #'(0.5 . -1) "3. ピアノ" \p
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
