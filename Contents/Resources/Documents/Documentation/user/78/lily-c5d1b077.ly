%% Generated by lilypond-book.py
%% Options: [quote,alt=[image of music],indent=0\mm,verbatim]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  line-width = 160\mm - 2.0 * 0.4\in
  indent = 0\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1192
\new Score {
  \new Staff <<
     \new Voice {

        \overrideProperty "Score.NonMusicalPaperColumn"
        #'line-break-system-details #'((Y-offset . 0))
        s1 * 2 \break

        \overrideProperty "Score.NonMusicalPaperColumn"
        #'line-break-system-details #'((Y-offset . 35))
        s1 * 3 \break

        \overrideProperty "Score.NonMusicalPaperColumn"
        #'line-break-system-details #'((Y-offset . 70))
        s1 * 6 \break

        \overrideProperty "Score.NonMusicalPaperColumn"
        #'line-break-system-details #'((Y-offset . 105))
        s1 * 5 \break
     }
     \new Voice {
        \repeat unfold 2 { c'4 c'4 c'4 c'4 }
        \repeat unfold 3 { c'4 c'4 c'4 c'4 }
        \repeat unfold 6 { c'4 c'4 c'4 c'4 }
        \repeat unfold 5 { c'4 c'4 c'4 c'4 }
     }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************