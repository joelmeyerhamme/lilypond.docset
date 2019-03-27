%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=15.9\cm,staffsize=17.5]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

#(set-global-staff-size 17.5)

\paper {
  indent = 0\mm
  line-width = 15.9\cm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 697
\relative c {
  \clef "bass"
  \key d \minor
  \time 3/4
  \mergeDifferentlyDottedOn
  <<
    { \slurDashed d8.-\flageolet( e16) e4.-\trill( d16 e) }
     \\
    { d4_2 a2 }
  >>
  \slurDashed
  <f' a, d,>4. e8( d c)
  \slurSolid
  bes8 g' f e16( f g_1 a_2 bes_3 d,_2)
  \slurDashed
  cis4.-\trill b8_3( a g)
  <<
    { \slurDashed d'8.( e16) e4.-\trill( d16 e) }
     \\
    { <f, a>4 a2 }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
