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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/chord-name-minor.ly"
\sourcefileline 0
\version "2.16.0"
\header {
    texidoc = "The layout of the minor chord can be tuned with
@code{minorChordModifier}."
}

\chords {
    c:min
    c:min7
    \set minorChordModifier = \markup { "-" }
    c:min
    c:min7
}



% ****************************************************************
% end ly snippet
% ****************************************************************
