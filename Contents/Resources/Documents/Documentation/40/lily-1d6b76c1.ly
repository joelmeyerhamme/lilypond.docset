%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=2.1\cm,noragged-right,notime]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 2.1\cm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  ragged-right = ##f
}

\layout {
  
 \context {
   \Score
   timing = ##f
 }
 \context {
   \Staff
   \remove "Time_signature_engraver"
 }
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 352
<<
  \chords { c1:maj11 }
  \chordmode { c1:maj11 }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
