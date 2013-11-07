%% Generated by lilypond-book.py
%% Options: [alt=[image of music],ragged-right,indent=0\mm,verbatim]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
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
\sourcefileline 571
smaller = {
  \set fontSize = #-2
  \override Stem #'length-fraction = #0.8
  \override Beam #'thickness = #0.384
  \override Beam #'length-fraction = #0.8
}

\addQuote clarinet \relative {
  R1*20
  r2 r8 c' f f
}

\new Staff \relative  <<

  % setup a context for cue notes.
  \new Voice = "cue" { \smaller \skip 1*21 }

  \set Score.skipBars = ##t

  \new Voice {
    R1*20
    \cueDuring #"clarinet" #UP {
      R1
    }
    g4 g2.
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************