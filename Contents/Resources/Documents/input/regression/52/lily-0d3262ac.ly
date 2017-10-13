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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/flags-straight.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc = "Straight flag styles."
}


% test notes, which will be shown in different styles:
testnotes = { \autoBeamOff c'8 d'16 c'32 d'64 \acciaccatura {c'8} d'64
   c''8 d''16 c''32 d''64 \acciaccatura {\stemDown c''8 \stemNeutral} d''64  }

{
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \time 2/4
  \mark "modern straight"
  \override Flag.stencil = #modern-straight-flag
  \testnotes

  \mark "old straight (large angles)"
  \override Flag.stencil = #old-straight-flag
  \testnotes

  \mark "flat"
  \override Flag.stencil = #flat-flag
  \testnotes
%
%   \mark "custom slant"
% %   Custom straight flag. The parameters are:
% %                flag thickness and spacing
% %                up-flag angle and length
% %               down-flag angle and length
%   \override Flag.stencil = #(straight-flag 0.35 0.8 -5 0.5 60 2.0)
%   \testnotes
}



% ****************************************************************
% end ly snippet
% ****************************************************************
