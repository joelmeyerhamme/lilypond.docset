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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/drums.ly"
\sourcefileline 0

\header {
   texidoc = "In drum notation, there is a special clef symbol, drums are
   placed to their own staff positions and have note heads according to the 
   drum, an extra symbol may be attached to the drum, and the number of lines 
   may be restricted."
}


\version "2.17.6"

drh = \drummode { cymc4.^"crash" hhc16^"h.h." hh \repeat "unfold" 5 {hhc8 hho hhc8 hh16 hh} hhc4 r4 r2 }
drl = \drummode {\repeat "unfold" 3 {bd4 sn8 bd bd4 << bd ss >> } bd8 tommh tommh bd toml toml bd tomfh16 tomfh }
timb = \drummode { \repeat "unfold" 2 {timh4 ssh timl8 ssh r timh r4 ssh8 timl r4 cb8 cb} }

\score {
  \repeat "volta" 2 {
    <<
      \new DrumStaff \with {
	drumStyleTable = #timbales-style
	\override StaffSymbol.line-count = #2
	\override BarLine.bar-extent = #'(-1 . 1)
      } <<
	\set Staff.instrumentName = "timbales"
	\timb
      >>
      \new DrumStaff <<
	\set Staff.instrumentName = "drums"
	\new DrumVoice {\stemUp \drh }
	\new DrumVoice {\stemDown \drl }
      >>
    >>
  }
  \layout {}

  %% broken:
  
  \midi {
    \tempo 4 = 120
    }


}





% ****************************************************************
% end ly snippet
% ****************************************************************
