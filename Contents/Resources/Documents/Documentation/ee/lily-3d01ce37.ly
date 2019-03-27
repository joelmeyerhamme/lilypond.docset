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
\sourcefileline 1764
\book {
  \header { tagline = ##f }
  \markup {
    "Es mostra a sota"
    \footnote \super \char##x00a7 \concat {
      \super \char##x00a7 \italic " Per mi"
    }
    "una melodia simple.  És una composició"
    \footnote \super \char##x00b6 \concat {
      \super \char##x00b6 \italic " Ago 2012"
    }
    "recent."
  }
  \relative {
    a'4 b8 e c4 d
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************