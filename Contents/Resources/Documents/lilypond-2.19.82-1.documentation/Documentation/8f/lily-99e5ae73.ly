%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=1.0\cm,staffsize=26]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

#(set-global-staff-size 26)

\paper {
  indent = 0\mm
  line-width = 1.0\cm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 2099
\include "gregorian.ly"
\score {
  \relative {
    % Quilisma Pes Auctus Descendens
    \[ g' \quilisma a \pes \auctum \descendens b \]
  }
\layout { \neumeDemoLayout }}



% ****************************************************************
% end ly snippet
% ****************************************************************