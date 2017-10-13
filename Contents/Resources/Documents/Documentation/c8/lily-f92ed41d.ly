%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote,ragged-right]
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





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 3876
\score {
  \relative {
    % Visible tempo marking
    \tempo 4=120
    a'4 a a
    \once \override Score.MetronomeMark.stencil = ##f
    % Invisible tempo marking to lengthen fermata in MIDI
    \tempo 4=80
    a4\fermata
    % New tempo for next section
    \tempo 4=100
    a4 a a a
  }
  \layout { }
  \midi { }
}



% ****************************************************************
% end ly snippet
% ****************************************************************