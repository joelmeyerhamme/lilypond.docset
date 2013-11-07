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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/repeat-volta.ly"
\sourcefileline 0
\version "2.12.0"

\header{
  texidoc="
Volta (Semi folded) behavior.  Voltas can start on non-barline moments.
If they don't barlines should still be shown.
"
}

%%  no alts.

\context Voice \relative c'' {
  %% repeat non aligning with barlines.
  \repeat volta 3 { c^"3x 0alt" d e }
  %% less alts than body
  \repeat volta 4 { c^"4x 2alt" d } \alternative { e f }
  %% more alts than body
  \repeat volta 2 { c^"2x 3alt" d } \alternative { e f g }
}





% ****************************************************************
% end ly snippet
% ****************************************************************
