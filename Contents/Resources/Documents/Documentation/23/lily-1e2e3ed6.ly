%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote]
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





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 156
  Key = \key a \major
  Time = {
    \time 5/4
    \tempo "Allegro" 4 = 144
  }
  SopranoMusic = \relative { gis' gis gis gis gis }
  AltoMusic = \relative { cis' cis cis cis cis }
  VerseOne = \lyricmode { Words to this du -- et }
  TwoVoicesPerStaff = ##t
  \include "satb.ly"



% ****************************************************************
% end ly snippet
% ****************************************************************
