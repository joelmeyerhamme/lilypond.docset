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
\sourcefileline 2331
\time 3/4
% il comportamento predefinito è un gruppo di (6) a causa di beamExceptions
\repeat unfold 6 {a8} |
% Le travature saranno raggruppate in (1 1 1) a causa dei valori predefiniti di baseMoment e beatStructure
\set Timing.beamExceptions = #'()
\repeat unfold 6 {a8}



% ****************************************************************
% end ly snippet
% ****************************************************************
}