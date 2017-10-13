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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/completion-heads-multiple-ties.ly"
\sourcefileline 0
\version "2.16.0"

\header{
texidoc="
The @code{Completion_heads_engraver} correctly handles notes that need to be split into more than 2 parts.
"
}

\layout { ragged-right= ##t }


\new Voice \with {
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
} \relative c'{
  \time 2/4
  c4.. c4. c4. c2 c1
}



% ****************************************************************
% end ly snippet
% ****************************************************************