%% Generated by lilypond-book.py
%% Options: [quote,alt=[image of music],indent=0\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  line-width = 160\mm - 2.0 * 0.4\in
  indent = 0\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1921
\score {
  <<
    %-- Note names above treble staff --%
    \new NoteNames {
      \set printOctaveNames = ##t
      g,1 b, d f a
      \once \override NoteName #'color = #red
      c'1
      s1
      e'1 g' b' d'' f''
    }
    %-- Treble Staff --%
    \new Staff = "G" {
      \once \override Staff.Clef #'stencil = ##f
      \clef "G"
      s1 s s s s s s
      \override Staff.Clef #'full-size-change = ##t
      \set Staff.forceClef = ##t
      \clef "G"
      e'1 g' b' d'' f''
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
    }
    %-- Bass Staff --%
    \new Staff = "F" {
      \override Staff.Clef #'stencil = ##f
      \clef "F"
      g,1 b, d f a
    }
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 2 1)
      \override  NonMusicalPaperColumn
        #'line-break-system-details = #'((alignment-offsets . (3 0 -3 -6)))
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
