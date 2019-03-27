%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,papersize=a8landscape,quote]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(set-paper-size "a8landscape")
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





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1573
\book {
  \header { tagline = ##f }
  \relative c'' {
    < \footnote #'(1 . -2) "Un La" a
      \single \footnote #'(-1 . -1) "Un sostingut" Accidental
      cis
      \single \footnote #'(0.5 . 0.5) "Un bemoll" Accidental
      ees fis
    >2
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
