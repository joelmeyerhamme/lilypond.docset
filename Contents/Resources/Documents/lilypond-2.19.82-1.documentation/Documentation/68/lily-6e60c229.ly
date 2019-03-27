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
\sourcefileline 1749
\score {
  <<
    %-- Note names above treble staff --%
    \new NoteNames {
      \set printOctaveNames = ##t
      g,1 b, d f a
      \once \override NoteName #'color = #red
      c'1
      e'1 g' b' d'' f''
    }
    %-- Treble Staff --%
    \new Staff = "G" {
      \override Staff.Clef #'stencil = ##f
      \clef "G"
      s1 s s s s s
      e'1 g' b' d'' f''
      s1
    }
    %-- Alto Staff reduced to a single line on middle C --%
    \new Staff = "C" {
      \override Staff.StaffSymbol #'line-count = #1
      \override Staff.StaffSymbol #'color = #red
      \override Staff.Clef #'stencil = ##f
      \clef "C"
      s1 s s s s
      \override NoteHead #'color = #red
      c'1
      s1 s s s s s
    }
    %-- Bass Staff --%
    \new Staff = "F" {
      \override Staff.Clef #'stencil = ##f
      \clef "F"
      g,1 b, d f a
      s1 s s s s s s
    }
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1/1)
      \override  NonMusicalPaperColumn
        #'line-break-system-details = #'((alignment-distances . (3 3)))
      \override BarLine #'stencil = ##f
    }
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
