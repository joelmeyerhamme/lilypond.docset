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
\sourcefileline 1001
prepPiccolo = <>^\markup \italic { muta in Piccolo }

setPiccolo = {
  \set Staff.instrumentName = #"Piccolo"
  \set Staff.shortInstrumentName = #"Picc."
  \set Staff.midiInstrument = #"piccolo"
  <>^\markup \bold { Piccolo }
  \transposition c''
}

prepFlute = <>^\markup \italic { muta in Flauto }

setFlute = {
  \set Staff.instrumentName = #"Flute"
  \set Staff.shortInstrumentName = #"Flt."
  \set Staff.midiInstrument = #"flute"
  <>^\markup \bold { Flute }
  \transposition c'
}

\new Staff \with {
  instrumentName = #"Flute"
  shortInstrumentName = #"Flt."
  midiInstrument = #"flute"
}
\relative {
  g'1 g g g \break
  g1 g \prepPiccolo R R \break
  \setPiccolo
  g1 g g g \break
  g1 g \prepFlute R R \break
  \setFlute
  g1 g g g
}



% ****************************************************************
% end ly snippet
% ****************************************************************