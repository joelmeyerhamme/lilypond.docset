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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/pedal-end.ly"
\sourcefileline 0
\version "2.12.0"
\header {

  texidoc = "Unterminated piano pedal brackets run to the end of the piece. "

}

\layout { ragged-right  = ##t }


{
  \set Staff.pedalSustainStyle = #'bracket
  c4 \sustainOn
  \bar "|."
}





% ****************************************************************
% end ly snippet
% ****************************************************************