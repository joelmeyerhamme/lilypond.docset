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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/chord-tremolo-scaled-durations.ly"
\sourcefileline 0
\version "2.11.32"

\header {
  texidoc = "Don't allow scaled durations to confuse the tremolo beaming.
The tremolos should each have 3 beams."
}

{
  \time 3/4
  \repeat tremolo 12 {e'32 f'}
  \scaleDurations #'(3 . 4) {
    \repeat tremolo 12 {e'32 f'} r4
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************