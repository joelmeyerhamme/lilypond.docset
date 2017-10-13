%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote,ragged-right]
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
  ragged-right = ##t
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 358
\book {
  \score {
    \new StaffGroup <<
      \new Staff {
        \relative {
          c''4 c c c
          \break
          c4 c c c
        }
      }
      \new Staff {
        \relative {
          c''4 c c c
          \break
          c4 c c c
        }
      }
    >>
  }
  \paper {
    system-separator-markup = \slashSeparator
    % les ordres següents sols calen per al format d'aquesta documentació
    paper-width = 100\mm
    paper-height = 100\mm
    tagline = ##f
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
