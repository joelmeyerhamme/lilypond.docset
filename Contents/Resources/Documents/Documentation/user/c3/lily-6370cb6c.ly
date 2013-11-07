%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,fragment,quote,relative=2,ragged-right,alt=[image of music]]
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

\relative c''
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 1450
\new Staff ="main" {
  \relative g' {
    r4 g8 g c4 c8 d |
    e4 r8
    <<
      { f c c }
      \new Staff \with {
        alignAboveContext = #"main"
        \override Clef #'stencil = ##f
        \override TimeSignature #'stencil = ##f
        % Reduce all font sizes by ~24%
        fontSize = #-2
      }
        { f8 f c }
    >>
    r4 |
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
}
