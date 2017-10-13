%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=10.0\cm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 10.0\cm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1637
\header { tagline = ##f }
\paper {
  tocActMarkup = \markup \large \column {
    \hspace #1
    \fill-line { \null \italic \fromproperty #'toc:text \null }
    \hspace #1
  }
}

tocAct =
#(define-music-function (text) (markup?)
   (add-toc-item! 'tocActMarkup text))

\book {
  \markuplist \table-of-contents
  \tocAct \markup { Atto Primo }
  \tocItem \markup { Coro. Viva il nostro Alcide }
  \tocItem \markup { Cesare. Presti omai l'Egizzia terra }
  \tocAct \markup { Atto Secondo }
  \tocItem \markup { Sinfonia }
  \tocItem \markup { Cleopatra. V'adoro, pupille, saette d'Amore }
  \markup \null
}



% ****************************************************************
% end ly snippet
% ****************************************************************
