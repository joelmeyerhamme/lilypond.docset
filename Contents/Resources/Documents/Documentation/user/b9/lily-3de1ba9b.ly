%% Generated by lilypond-book.py
%% Options: [indent=0\mm,fragment,notime,relative=2,ragged-right,alt=[image of music]]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  ragged-right = ##t
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
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

\relative c''
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 27
\set Staff.autoBeaming = ##f
\override Staff.Clef #'break-visibility = #all-invisible
c1 c2 c8 c16



% ****************************************************************
% end ly snippet
% ****************************************************************
}
