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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/chord-tremolo.ly"
\sourcefileline 0
\version "2.12.0"

\header{
texidoc="
Chord tremolos look like beams, but are a kind of repeat symbol.
To avoid confusion, chord tremolo beams do not reach the stems, but 
leave a gap.  Chord tremolo beams on half notes are not ambiguous,
as half notes cannot appear in a regular beam, and should reach the 
stems.

In this example, each tremolo lasts exactly one measure.

(To ensure that the spacing engine is not confused we add some regular
notes as well.)

"
}

\context Voice \relative c' {
  \time 4/4
  \repeat "tremolo" 16 { d32 e }
  \repeat "tremolo" 8 { d16 e }
  \repeat "tremolo" 4 { d8 e }

  \time 3/4
  \repeat "tremolo" 12 { d32 e }
  \repeat "tremolo" 6 { d16 e } 
  \repeat "tremolo" 3 { d8 e } 

  \time 2/4
  \repeat "tremolo" 8 { d32 e }
  \repeat "tremolo" 4 { d16 e }
  \repeat "tremolo" 2 { d8 e }

  \time 1/4
  \repeat "tremolo" 4 { d32 e }
  \repeat "tremolo" 2 { d16 e }

  c4 c4 c4 c4 c4 
}




% ****************************************************************
% end ly snippet
% ****************************************************************
