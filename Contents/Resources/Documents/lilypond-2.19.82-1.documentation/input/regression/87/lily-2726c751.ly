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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/markup-map.ly"
\sourcefileline 0
\version "2.19.26"

\header {
  texidoc = "@code{\\markupMap} can be used for applying a markup function
to music properties throughout a music expressions, like the @code{text} of
all contained lyric events."
}

\layout { ragged-right = ##t }

\new Voice
\markupMap TextScriptEvent.text
           #italic-markup
{ g'2^"See" c''^"this?" }
\addlyrics {
  \markupMap text
             \markup \fontsize #5 \with-color #red \rotate #30 \etc
  { Oh yes! }
}



% ****************************************************************
% end ly snippet
% ****************************************************************