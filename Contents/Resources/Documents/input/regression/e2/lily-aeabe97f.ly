%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/multi-measure-rest-instr-name.ly"
\sourcefileline 0
\version "2.12.0"
\header {

  texidoc = "There are both long and short instrument names.
Engraving instrument names should not be confused by the
multimeasure rests. "

}

\layout {
  ragged-right = ##t
  \context {
    \Staff
    \consists Instrument_name_engraver

  }
}


\context Staff <<
  \set Staff.instrumentName = "instrument"
  \set Staff.shortInstrumentName = "instr"
  {c''1 \break R1 }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************