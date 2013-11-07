%% Generated by lilypond-book.py
%% Options: [indent=0\mm,fragment,quote,notime,relative=2,ragged-right,alt=[image of music]]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm - 2.0 * 0.4\in
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
\sourcefileline 2803
<<
  {
    a1
    b^"~~ S" c d e^"~~ S" f g a
  }
 \lyrics {
    "Ancient (or Natural) minor"
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
}
