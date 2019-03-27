%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,notime,quote]
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
  
 \context {
   \Score
   timing = ##f
 }
 \context {
   \Staff
   \remove "Time_signature_engraver"
 }
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 3961
\relative c'' {
  \override Staff.Clef #'full-size-change = ##t
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
    \clef french
    g1
    \clef treble
    g1
    \clef "G^8"
    g1
    \clef "G_8"
    g1
}
\addlyrics {
    "french violin clef"
    "violin clef"
    "octave up"
    "octave down"
  }



% ****************************************************************
% end ly snippet
% ****************************************************************
