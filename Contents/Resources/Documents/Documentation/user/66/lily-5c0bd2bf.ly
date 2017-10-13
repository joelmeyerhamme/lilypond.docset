%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,fragment,quote,relative=1,ragged-right,alt=[image of music]]
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
  
}

\relative c'
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 2946
e1
% the RehearsalMark will be centered above the Clef
\override Score.RehearsalMark #'break-align-symbols = #'(clef)
\key a \major
\clef treble
\mark "↓"
e
% the RehearsalMark will be centered above the TimeSignature
\override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
\key a \major
\clef treble
\time 3/4
\mark "↓"
e2.



% ****************************************************************
% end ly snippet
% ****************************************************************
}