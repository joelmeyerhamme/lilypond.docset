%% Generated by lilypond-book.py
%% Options: [alt=[image of music],indent=0\mm,line-width=13.0\cm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 13.0\cm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 2212
#(define ((compound-time one two three num) grob)
  (grob-interpret-markup grob
    (markup
      #:override '(baseline-skip . 0)
      #:number
      #:line (
        #:left-column (one num)
        #:vcenter "+"
        #:left-column (two num)
        #:vcenter "+"
        #:left-column (three num)))))

\relative c' {
  \key f \major
  #(set-time-signature 8 8 '(3 2 3))
  \override Staff.TimeSignature #'stencil =
    #(compound-time "3" "2" "3" "8")
  #(override-auto-beam-setting '(end 1 8 8 8) 3 8)
  #(override-auto-beam-setting '(end 1 8 8 8) 5 8)
  
  c8 d e f4 d8 c bes
  c4 g'8 e c f4.
  \bar "||"
}



% ****************************************************************
% end ly snippet
% ****************************************************************