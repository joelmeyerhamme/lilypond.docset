%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,quote,ragged-right]
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
  ragged-right = ##t
}

\layout {
  
}




{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 1584
\new Staff ="main" {
  \relative {
    r4 g'8 g c4 c8 d |
    e4 r8
    <<
      { f8 c c }
      \new Staff \with {
        alignAboveContext = #"main"
        % この譜には音部記号を譜刻しません
        \override Clef.stencil = ##f
        % この譜には拍子記号を譜刻しません
        \override TimeSignature.stencil = ##f
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
