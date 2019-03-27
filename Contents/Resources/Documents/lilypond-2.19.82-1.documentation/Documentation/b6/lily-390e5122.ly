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
\sourcefileline 1267
\include "engraver-example.ily"

\score {
  \topVoice
  \layout {
    \context {
      \Voice
      \remove "Stem_engraver"
      \remove "Phrasing_slur_engraver"
      \remove "Slur_engraver"
      \remove "Script_engraver"
      \remove "Beam_engraver"
      \remove "Auto_beam_engraver"
    }
    \context {
      \Staff
      \remove "Accidental_engraver"
      \remove "Key_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
      \consists "Pitch_squash_engraver"
      \remove "Time_signature_engraver"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
