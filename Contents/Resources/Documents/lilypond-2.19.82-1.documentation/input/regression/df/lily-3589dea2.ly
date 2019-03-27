%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
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
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/instrument-name-hara-kiri.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc = "Instrument names are removed when the staves are
killed off.

In this example, the second staff (marked by the bar number 2)
disappears, as does the instrument name."
}
        
\new PianoStaff <<
  \new Staff {
    \override Staff.VerticalAxisGroup.remove-empty = ##t  
    \set PianoStaff.instrumentName = #"up" 
    \set PianoStaff.shortInstrumentName = #"u"
    c'1\break R
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
