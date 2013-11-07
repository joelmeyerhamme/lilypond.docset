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
\sourcefilename "tag-filter.ly"
\sourcefileline 0

\version "2.12.0"
\header {

  texidoc = "The @code{\\tag} command marks music expressions with a
name. These tagged expressions can be filtered out later. This
mechanism can be used to make different versions of the same music. In
this example, the top stave displays the music expression with all
tags included. The bottom two staves are filtered: the part has cue
notes and fingerings, but the score has not."

}

\layout { ragged-right= ##t }

common =
\relative c''  {

  c1
  \relative c' <<
    \tag #'part <<
      R1 \\
      {
	\set fontSize = #-1
	c4_"cue" f2 g4 } 
    >>
    \tag #'score R1
  >>
  c1-\tag #'part ^4
}



\simultaneous { 
  \new Staff {
    \set Staff.instrumentName = #"both"
    \common
  }
  \new Staff {
    \set Staff.instrumentName = #"part"
    \keepWithTag #'part \common
  }
  \new Staff {
    \set Staff.instrumentName = #"score"
    \keepWithTag #'score \common
  }
}









% ****************************************************************
% end ly snippet
% ****************************************************************
