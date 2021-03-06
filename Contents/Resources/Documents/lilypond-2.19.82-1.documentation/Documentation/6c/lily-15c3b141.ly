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
\sourcefileline 300
\paper {
  ragged-right = ##t
  indent = #0.0
}

music = {
   c'4 e''4 e'4 b'4
   \stemDown
   b'8[ e'' a' e'']
   \stemNeutral
   e'8[ e'8 e'8 e'8]
}
\score
{
  \music
  \layout {
    \context {
      \Staff
      \override NoteSpacing.stem-spacing-correction = #0.0
      \override NoteSpacing.same-direction-correction = #0.0
      \override StaffSpacing.stem-spacing-correction = #0.0
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
