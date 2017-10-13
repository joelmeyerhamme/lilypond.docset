%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=3\cm,notime,ragged-right,relative=1]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 3\cm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  ragged-right = ##t
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



\relative c'
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 1327
\clef tenorG
c1



% ****************************************************************
% end ly snippet
% ****************************************************************
}
