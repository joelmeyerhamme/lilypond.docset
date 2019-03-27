%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,ragged-right,relative=2]
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
  ragged-right = ##t
}

\layout {
  
}



\relative c''
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 3696
d2 \glissando d'2
\once \override Glissando.style = #'dashed-line
d,2 \glissando d'2
\override Glissando.style = #'dotted-line
d,2 \glissando d'2
\override Glissando.style = #'zigzag
d,2 \glissando d'2
\override Glissando.style = #'trill
d,2 \glissando d'2



% ****************************************************************
% end ly snippet
% ****************************************************************
}
