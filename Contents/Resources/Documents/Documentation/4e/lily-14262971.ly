%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,quote,relative=1]
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



\relative c'
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 841
\new Voice {
  c1^\markup {
    \override #'(fret-diagram-details . (
                 (finger-code . in-dot))) {
      \fret-diagram-verbose #'((mute 6)
                               (place-fret 5 3 1 red)
                               (place-fret 4 5 2 inverted)
                               (place-fret 3 5 3 green)
                               (place-fret 2 5 4 blue inverted)
                               (place-fret 1 3 1 violet)
                               (barre 5 1 3 ))
    }
  }
  c1^\markup {
    \override #'(fret-diagram-details . (
                 (finger-code . below-string))) {
      \fret-diagram-verbose #'((mute 6)
                             (place-fret 5 3 1 red parenthesized)
                             (place-fret 4 5 2 yellow
                                               default-paren-color
                                               parenthesized)
                             (place-fret 3 5 3 green)
                             (place-fret 2 5 4 blue )
                             (place-fret 1 3 1)
                             (barre 5 1 3))
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
}
