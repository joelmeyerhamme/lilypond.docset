%% Generated by lilypond-book.py
%% Options: [quote,alt=[image of music],ragged-right,indent=0\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  line-width = 160\mm - 2.0 * 0.4\in
  ragged-right = ##t
  indent = 0\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 520
\include "engraver-example.ily"

\score {
  \topVoice
  \layout {
    \context {
      \Voice
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
      \remove "Bar_engraver"
      \remove "Time_signature_engraver"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
