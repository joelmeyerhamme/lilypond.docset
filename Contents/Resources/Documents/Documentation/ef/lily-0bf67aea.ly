%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,quote]
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
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}




{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 360
\textLengthOn
c''1^\markup {
  \center-column {
    "1/4 閉じるとリング キーを閉じる"
    \woodwind-diagram #'flute #'((cc . (one1qTR))
                                 (lh . ())
                                 (rh . ()))
  }
}

c''1^\markup {
  \center-column {
    "リング キーを閉じると完全に閉じる"
    \woodwind-diagram #'flute #'((cc . (oneTR))
                                 (lh . ())
                                 (rh . ()))
  }
}

c''1^\markup {
  \center-column {
    "リング キーを閉じるとオープン"
    \woodwind-diagram #'flute #'((cc . (oneRT))
                                 (lh . ())
                                 (rh . ()))
  }
}

c''1^\markup {
  \center-column {
    "オープンと完全に閉じる"
    \woodwind-diagram #'flute #'((cc . (oneT))
                                 (lh . ())
                                 (rh . ()))
  }
}

c''1^\markup {
  \center-column {
    "1/4 閉じると3/4 閉じる"
    \woodwind-diagram #'flute #'((cc . (one1qT3q))
                                 (lh . ())
                                 (rh . ()))
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
}
