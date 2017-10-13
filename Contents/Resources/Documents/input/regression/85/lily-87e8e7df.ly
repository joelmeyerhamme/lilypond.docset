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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/harp-pedals-tweaking.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Harp pedals can be tweaked through the size, thickness and 
harp-pedal-details properties of TextScript."
}

\relative {
  \override Score.PaperColumn.keep-inside-line = ##f
  \override Voice.TextScript.harp-pedal-details.box-width = #1
  \once \override Voice.TextScript.size = #1.5
  \once \override Voice.TextScript.thickness = #7
  c''1^\markup \harp-pedal #"o^ovo-|vovo-o^"
  c1^\markup \override #'(harp-pedal-details . (
                  (box-width . 0.6)
                  (box-height . 0.3)
                  (box-offset . 0.5)
                  (space-before-divider . 0.1)
                  (space-after-divider . 1.2))) {
           \harp-pedal #"o^ovo-|vovo-o^"}
  \revert Voice.TextScript.harp-pedal-details.box-width
  \override Voice.TextScript.harp-pedal-details.circle-thickness = #3
  \override Voice.TextScript.harp-pedal-details.circle-x-padding = #0.6
  \override Voice.TextScript.harp-pedal-details.circle-y-padding = #-0.3
  c1^\markup \harp-pedal #"o^ovo-|vovo-o^"
}



% ****************************************************************
% end ly snippet
% ****************************************************************
