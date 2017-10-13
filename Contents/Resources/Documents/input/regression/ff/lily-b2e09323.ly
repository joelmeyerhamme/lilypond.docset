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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/chord-names-bass.ly"
\sourcefileline 0
\version "2.12.0"

\header {

  texidoc = "In ignatzek inversions, a note is dropped down to act as the
bass note of the chord. Bass note may be also added explicitly.  
Above the staff: computed chord names. Below staff: entered chord name. 
"

}


bladidbla = \chordmode { 
  f4:maj7/e_":maj7/e" f:maj7/f_":maj7/f" f2:maj7/g_":maj7/g"
  f4:maj7/+e_":maj7/+e" f:maj7/+f_":maj7/+f" f2:maj7/+g_":maj7/+g"
}

<<
  \context ChordNames \bladidbla
  \context Voice \bladidbla
>>



% ****************************************************************
% end ly snippet
% ****************************************************************