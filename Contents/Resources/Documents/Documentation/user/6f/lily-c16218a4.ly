%% Generated by lilypond-book.py
%% Options: [alt=[image of music],indent=0\mm,line-width=13.0\cm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 13.0\cm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 6076
<<
  \context Staff = sa {
    \relative c'' {
      a4_"turn" b\turn c2 \bar "||"
      g4_"mordent" a b\mordent a \bar "||"
      e'4_"prall" d\prall c2 \bar "||"
    }
  }
  \relative c'' {
    a4 c16[ b a b] c2
    g4 a b16-[ a b8] a4
    e'4 e32[ d e d ~ d8] c2
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
