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
\sourcefileline 2317
\time 4/4
\set Timing.baseMoment = #(ly:make-moment 1/8)
\set Timing.beatStructure = 3,3,2
% Le travature non saranno raggruppate in (3 3 2) a causa di beamExceptions
\repeat unfold 8 {c8} |
% Il raggruppamento delle travature è (3 3 2) perché abbiamo tolto le impostazioni predefinite di beamExceptions
\set Timing.beamExceptions = #'()
\repeat unfold 8 {c8}



% ****************************************************************
% end ly snippet
% ****************************************************************
}